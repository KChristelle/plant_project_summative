import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/login/components/actionButton.dart';
import 'package:plant_growth_tracking_app/screens/login/components/header.dart';
import 'package:plant_growth_tracking_app/screens/login/components/inputField.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: kTextColor,
          image: DecorationImage(
            image: AssetImage("assets/landing.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: size.width * 0.8,
          height: size.height * 0.9,
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

              // title
              AppTitle(),
              SizedBox(
                height: size.height * 0.03,
              ),

              // welcome message
              welcome(),
              SizedBox(
                height: size.height * 0.06,
              ),

              // Container for sign in form
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    // Email
                    InputField(
                      label: "Email",
                      hideText: false,
                      controller: null,
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),

                    // Send reset link
                    PrimarySignIn(
                      action: "Send Reset Link",
                      backgroundColor: kPrimaryColor,
                      textColor: kBackgroundColor,
                      width: size.width * 0.4,
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
