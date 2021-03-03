import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/login/components/actionButton.dart';
import 'package:plant_growth_tracking_app/screens/login/components/header.dart';
import 'package:plant_growth_tracking_app/screens/login/components/inputField.dart';
import 'package:plant_growth_tracking_app/screens/login/signIn.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: size.height,
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding + 10, vertical: size.height * 0.15),
        decoration: BoxDecoration(
          color: kTextColor,
          image: DecorationImage(
              image: AssetImage("assets/landing.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          width: size.width * 0.95,
          height: size.height * 0.9,
          decoration: BoxDecoration(
              color: kBackgroundColor, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: kDefaultPadding * 4,
                    ),
                    LoginHeader(),
                    SizedBox(
                      height: kDefaultPadding * 3,
                    ),
                    // Container for sign in form
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          // first text field "Email"
                          InputField(
                            input: "Email",
                            textInput: false,
                          ),
                          // create space between the textfields
                          SizedBox(
                            height: kDefaultPadding * 2,
                          ),
                          // Sign In
                          ActionButton(
                            action: "Send Reset Link",
                            textColor: kBackgroundColor,
                            backgroundColor: kPrimaryColor,
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()));
                            },
                          ),
                        ],
                      ),
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
