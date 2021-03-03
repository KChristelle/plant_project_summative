import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/addPlantAlert.dart';
import 'package:plant_growth_tracking_app/screens/login/components/actionButton.dart';
import 'package:plant_growth_tracking_app/screens/login/components/header.dart';
import 'package:plant_growth_tracking_app/screens/login/signIn.dart';
import 'package:plant_growth_tracking_app/screens/login/signUp.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding + 10, vertical: size.height * 0.15),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/landing.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: size.width * 0.85,
          height: size.height * 0.9,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(kDefaultPadding),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size.height * 0.1,
              ),
              LoginHeader(),
              SizedBox(
                height: size.height * 0.1,
              ),
              // Sign In
              ActionButton(
                action: "Sign In",
                textColor: kTextColor,
                backgroundColor: kBackgroundColor,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
              ),

              SizedBox(
                height: kDefaultPadding,
              ),

              // Sign In with Facebook
              ActionButton(
                action: "Sign In With Facebook",
                textColor: kBackgroundColor,
                backgroundColor: facebookBlue,
                press: () {},
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
                    color: kTextColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
