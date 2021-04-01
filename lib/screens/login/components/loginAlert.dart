import 'package:flutter/material.dart';
import '../landingPage.dart';
import '../signUp.dart';
import '../../home/homePage.dart';
import '../signIn.dart';

showAlertDialogNewUser(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LandingPage()));},
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Account Created"),
    content: Text("Please Proceed to login"),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialogDupEmail(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CreateAccount()));},
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Account Creation Failed"),
    content: Text("Duplicated Email Found"),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
showAlertDialogPwNotMatch(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CreateAccount()));},
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Account Creation Failed"),
    content: Text("Please Ensure Password And Confirm Password Match"),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialogNewLogin(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage()));},
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Login Succesful"),

    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialogFailedLogin(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SignIn()));},
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Login Failed"),
    content: Text("Invalid Credentials"),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}