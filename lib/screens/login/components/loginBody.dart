import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/login/components/actionButton.dart';
import 'package:plant_growth_tracking_app/screens/login/components/header.dart';
import 'package:plant_growth_tracking_app/screens/login/signIn.dart';
import 'package:plant_growth_tracking_app/screens/login/signUp.dart';

class LoginBody extends StatelessWidget {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.7,
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.height * 0.15,
      ),
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

          // Header
          LoginHeader(),
          SizedBox(
            height: size.height * 0.08,
          ),

          // Sign In
          PrimarySignIn(
            action: 'Sign In',
            backgroundColor: kBackgroundColor,
            textColor: kPrimaryColor,
            width: size.width * 0.5,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              );
            },
          ),
          SizedBox(
            height: size.height * 0.03,
          ),

          // Sign In with Facebook
          PrimarySignIn(
            action: 'Sign In With Facebook',
            backgroundColor: facebookBlue,
            textColor: kBackgroundColor,
            width: size.width * 0.5,
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.015,
          ),

          // Create account
          SecondarySignIn(
            action: "Create Account",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateAccount(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
