//This file contains all firebase related functions

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/data/user.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/header.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/plantOverview.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/statistics.dart';

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

  res.forEach((plt) async {
    await FirebaseFirestore.instance
        .collection('plants')
        .doc(plt[0])
        .update({"health": (plt[1]-20)});
  });

  res = [];
  await FirebaseFirestore.instance
      .collection('plants')
      .where('user', isEqualTo: email)
      .get()
      .then((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((doc) {
      res.add([doc.id, doc["health"], doc["plant_index"]]);
    });
  });

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

          Size size = MediaQuery.of(context).size;
          return Positioned(
            top: 0,
            bottom: size.height * 0.6,
            child: Stack(
              children: <Widget>[
                // background
                Container(
                  height: size.height * 0.35,
                  width: size.width,
                  padding: EdgeInsets.all(kDefaultPadding),
                  decoration: BoxDecoration(
                    // color: kBackgroundColor,
                    color: Color(0xffE5E5E5).withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ),
                  ),
                ),

                // plant profile
                Positioned(
                  top: 20,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // title
                      Text(
                        plantSpecies[data['plant_index']],
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: kDefaultPadding * 0.5,
                      ),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),

                      // details
                      Container(
                        width: 220,
                        child: Text(
                            plantDesc[data['plant_index']], style: TextStyle(color: kPrimaryColor, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),

                      // params
                      // room temp
                      // Row(
                      //   children: [
                      //     PlantCareParams(
                      //       icon: Icons.thermostat_outlined,
                      //       title: "Room Temp",
                      //       value: "25°C",
                      //     ),

                      //     SizedBox(
                      //       width: kDefaultPadding,
                      //     ),

                      //     // sunlight
                      //     PlantCareParams(
                      //       icon: Icons.wb_sunny_outlined,
                      //       title: "Sunlight",
                      //       value: "60",
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: kDefaultPadding * 1,
                      ),

                      // state of plant
                      //
                      // HEALTHY
                      // PlantHealthState(
                      //   state: "Healthy",
                      //   textColor: kPrimaryColor,
                      //   backgroundColor: lightGreen.withOpacity(0.5),
                      // ),
                    ],
                  ),
                ),
                // image from plantimage
                Positioned(
                  top: size.height * 0.03,
                  left: size.width * 0.60,
                  child: Container(
                    height: size.height * 0.18,
                    width: size.height * 0.18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img${data['plant_index']}.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(size.height * 0.125),
                      ),
                      border: Border.all(
                        color: Color(0xffBBB7B7),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                // image
                // Positioned(
                //   top: 0,
                //   left: size.width * 0.5,
                //   right: 0,
                //   child: Container(
                //     width: size.width * 0.5,
                //     height: size.height * 0.35,
                //     margin: EdgeInsets.only(left: 19),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.only(
                //         bottomRight: Radius.circular(36),
                //       ),
                //       image: DecorationImage(
                //         image: AssetImage("assets/img1.jpg"),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          );
        }

        return Text("loading");
      },
    );
  }
}

class GetPlantHealth extends StatelessWidget {
  final String documentId;

  GetPlantHealth(this.documentId);

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

          Size size = MediaQuery.of(context).size;
          return Positioned(
            top: size.height * 0.25,
            child: Container(
              width: size.width,
              height: size.height * 0.6,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: kBackgroundColor,
              ),
              child: Column(
                children: [
                  // search plants & title
                  TitleWithIcon(
                    title: 'Plant Overview',
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: lightGreen,
                      size: 20,
                    ),
                  ),

                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // care statistics
                  // hydration
                  PlantCareStatistics(
                    value: "${data['water']}%",
                    title: "Hydration",
                    details: 'Needs 200ml of water each day',
                    icon: Icon(
                      Icons.water_damage_outlined,
                      color: lightGreen.withOpacity(0.5),
                      size: 16,
                    ),
                    newheight: data['water'] * 0.01,
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),

                  // fertilizer
                  PlantCareStatistics(
                    value: "${data['fertiliser']}%",
                    title: "Fertilizer",
                    details: 'Needs 200g of fertilizer each day',
                    icon: Icon(
                      Icons.water_damage_outlined,
                      color: lightGreen.withOpacity(0.5),
                      size: 16,
                    ),
                    newheight: data['fertiliser']  * 0.01,
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  // health
                  PlantCareStatistics(
                    value: "${data['health']}%",
                    title: "Health",
                    details: 'Overview of the plants overall health.',
                    icon: Icon(
                      Icons.healing,
                      color: lightGreen.withOpacity(0.5),
                      size: 16,
                    ),
                    newheight: data['water'] * 0.01,
                  ),
                  // additional statistics
                  // AdditionalStatistics(),
                ],
              ),
            ),
          );
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
