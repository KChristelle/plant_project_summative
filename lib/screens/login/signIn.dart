import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/screens/login/landingPage.dart';
import 'package:plant_growth_tracking_app/screens/login/resetPassword.dart';
import 'package:plant_growth_tracking_app/screens/login/signUp.dart';
import '../../data/db_functions.dart';

class SignIn extends StatelessWidget {
  final myEmailController = TextEditingController();
  final myPwController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myEmailController.dispose();
    myPwController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: kTextColor,
          image: DecorationImage(
              image: AssetImage("assets/landing.jpg"), fit: BoxFit.cover),
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

              SizedBox(height: 60),

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
                height: 20,
              ),

              // Password
              // Email
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
                      hintText: 'Password!',
                      hintStyle: TextStyle(color: Colors.white70)),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // Sign In
              Container(
                width: 250,
                height: 35,
                child: RaisedButton(
                  onPressed: () async {
                    int credCheck = await DatabaseHelper.instance
                        .checkUser(myEmailController.text, myPwController.text);

                    if (credCheck == 0) {
                      print("invalid Username Or Password");
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
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
                      'Sign In',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              // create account
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccount()));
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: kTextColor, fontSize: 10),
                    ),
                  ),

                  SizedBox(
                    width: 50,
                  ),

                  // forgot password
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetPassword()));
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: kTextColor, fontSize: 10),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
