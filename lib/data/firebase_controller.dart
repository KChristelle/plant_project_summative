//This file contains all firebase related functions

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';
import 'package:plant_growth_tracking_app/data/user.dart';

//sign in function
Future<bool> signIn(String email, String pw) async {
  try {
    //accepts inputs of email and password from login.dart
    //uses firebase to check if user has an account
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: pw);

    //bool return governs user path in calling function
    getUserPlants(userEmail);
    return true;
  } on FirebaseAuthException catch (e) {
    //on error print error
    //print(e.toString());
    return false;
  }
}

Future<void> getUserPlants(String email) async {
  List res = [];
  await FirebaseFirestore.instance
      .collection('plants')
      .where('user', isEqualTo: email)
      .get()
      .then((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((doc) {
      res.add([doc.id, doc["health"], doc["plant_index"]]);
    });
  });
  print(res);
  user_plants = res;
}

Future<bool> addPlant(String user, int startingHealth, int startingflvl,
    int startingwlvl, int startingmlvl, int plantindex) async {
  bool status = true;
  CollectionReference plants = FirebaseFirestore.instance.collection('plants');
  plants
      .add({
        'health': startingHealth,
        'user': user,
        'fertiliser': startingflvl,
        'water': startingwlvl,
        'maintain_lvl': startingmlvl,
        'last_light': DateTime.now(),
        'plant_index': plantindex
      })
      .then((value) => status = true)
      .catchError((error) => status = false);

  return status;
}

class GetPlantInfo extends StatelessWidget {
  final String documentId;

  GetPlantInfo(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('plants');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          //Change return
          return Text("Fertiliser: ${data['flvl']} , ${data['last_name']}");
        }

        return Text("loading");
      },
    );
  }
}

//new user register function
// ignore: missing_return
Future<String> register(String email, String pw) async {
  try {
    //accepts inputs of email and password from signup.dart
    //uses firebase to add user
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: pw);

    //bool return governs user path in calling function
    return "1";
  }
  //if error print error based on error type
  on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The pw is too weak');
      return "pw-weak";
    } else if (e.code == 'email-already-in-use') {
      print('Email already used');
      return "dup-email";
    }
  } catch (e) {
    print(e.toString());
    return "-1";
  }
}

class GetUserData extends StatelessWidget {
  final String documentId = "RlsuXQHXsm9I0HW5eOpz";

  GetUserData();

  @override
  Widget build(BuildContext context) {
    CollectionReference ft = FirebaseFirestore.instance.collection('firetest');
    return FutureBuilder<DocumentSnapshot>(
      future: ft.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Text("$data");
        }

        return Text("loading");
      },
    );
  }
}

Future<void> updateUser() {
  CollectionReference ft = FirebaseFirestore.instance.collection('firetest');
  return ft
      .doc("RlsuXQHXsm9I0HW5eOpz")
      .update({'heath': "90210"})
      .then((value) => print("User Updated"))
      .catchError((error) => print("Failed to update user: $error"));
}
