import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/screens/login/landingPage.dart';
import '../../data/db_functions.dart';

class CreateAccount extends StatelessWidget {
  final myEmailController = TextEditingController();
  final myPwController = TextEditingController();
  final myPwConfirmController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myEmailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: kTextColor,
          image: DecorationImage(
            image: AssetImage("assets/landing.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: 400,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Text(
                "Plants",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kBackgroundColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  letterSpacing: 5,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 35,
                height: 4,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Planner all plant parents need",
                style: TextStyle(
                  color: kBackgroundColor,
                  fontSize: 12,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(
                height: 60,
              ),

              // back to landing page
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LandingPage()));
                },
                backgroundColor: kBackgroundColor,
                child: Icon(
                  Icons.close_rounded,
                  color: kTextColor,
                  size: 35,
                ),
              ),

              SizedBox(
                height: 60,
              ),

              // Email
              Container(
                width: 250,
                height: 35,
                child: TextField(
                  controller: myEmailController,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  autofocus: true,
                  decoration: InputDecoration(
                      fillColor: Colors.black45,
                      filled: true,
                      border: InputBorder.none,
                      hintText: 'Enter Your Email!',
                      hintStyle: TextStyle(color: Colors.white70)),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              // Password
              Container(
                width: 250,
                height: 35,
                child: TextField(
                  controller: myPwController,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  autofocus: true,
                  decoration: InputDecoration(
                      fillColor: Colors.black45,
                      filled: true,
                      border: InputBorder.none,
                      hintText: 'Enter Your Password!',
                      hintStyle: TextStyle(color: Colors.white70)),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              // Confirm Password
              Container(
                width: 250,
                height: 35,
                child: TextField(
                  controller: myPwConfirmController,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  autofocus: true,
                  decoration: InputDecoration(
                      fillColor: Colors.black45,
                      filled: true,
                      border: InputBorder.none,
                      hintText: 'Confirm Your Password!',
                      hintStyle: TextStyle(color: Colors.white70)),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              // Sign Up
              Container(
                width: 250,
                height: 35,
                child: RaisedButton(
                  onPressed: () async {
                    int dupCheck = await DatabaseHelper.instance
                        .checkEmail(myEmailController.text);
                    if (dupCheck == 0) {
                      print('Duplicated Email!');

                    } else if ((myPwController.text !=
                        myPwConfirmController.text)|(myPwController.text == '')) {
                      print('Passwords Not The Same or Null!');

                    } else {
                      int i = await DatabaseHelper.instance.newUser({
                        DatabaseHelper.columnEmail: myEmailController.text,
                        DatabaseHelper.columnPW: myPwController.text
                      });
                      print('the inserted id is $i');

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LandingPage()));
                    }
                  },
                  textColor: kBackgroundColor,
                  color: darkGreen,
                  padding: const EdgeInsets.all(0.0),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              // already have an account? sign in
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateAccount()));
                },
                child: Text(
                  'Already have an account? Sign In',
                  style: TextStyle(color: kTextColor, fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
