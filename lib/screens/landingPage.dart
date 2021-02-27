import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/colors.dart';
import 'package:plant_growth_tracking_app/screens/account/signIn.dart';
import 'package:plant_growth_tracking_app/screens/account/signUp.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 150),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/landing.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          width: 400,
          height: 600,
          decoration: BoxDecoration(
              color: grey, borderRadius: BorderRadius.circular(20)),
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
                  color: themeGreen,
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
                  color: themeGreen,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Planner all plant parents need",
                style: TextStyle(
                    color: themeGreen, fontSize: 12, letterSpacing: 0.5),
              ),
              SizedBox(
                height: 120,
              ),

              // Sign In
              Container(
                width: 200,
                height: 35,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  textColor: black,
                  color: white,
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
                height: 20,
              ),

              // Sign In with Facebook
              Container(
                width: 200,
                height: 35,
                child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(0.0),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Sign In With Facebook',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              // create account
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateAccount()));
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.green[800],
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
