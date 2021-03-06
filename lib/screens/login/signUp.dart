import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/firebase_controller.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/login/components/actionButton.dart';
import 'package:plant_growth_tracking_app/screens/login/components/header.dart';
import 'package:plant_growth_tracking_app/screens/login/components/inputField.dart';
import 'package:plant_growth_tracking_app/screens/login/signIn.dart';
import 'components/loginAlert.dart';

class CreateAccount extends StatelessWidget {
  final myEmailController = TextEditingController();
  final myPwController = TextEditingController();
  final myPwConfirmController = TextEditingController();

  @override
  // ignore: override_on_non_overriding_member
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myEmailController.dispose();
    myPwController.dispose();
    myPwConfirmController.dispose();
  }

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
                height: size.height * 0.05,
              ),

              // title
              AppTitle(),
              SizedBox(
                height: size.height * 0.03,
              ),

              // welcome message
              welcome(),
              SizedBox(
                height: size.height * 0.03,
              ),

              // Container for sign up form
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    // Email
                    InputField(
                      label: "Email",
                      hideText: false,
                      controller: myEmailController,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),

                    // Password
                    InputField(
                      label: "Password",
                      hideText: true,
                      controller: myPwController,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),

                    // Confirm Password
                    InputField(
                      label: "Confirm Password",
                      hideText: true,
                      controller: myPwConfirmController,
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),

                    // Sign Up
                    PrimarySignIn(
                      action: "Sign Up",
                      backgroundColor: kPrimaryColor,
                      textColor: kBackgroundColor,
                      width: size.width * 0.5,
                      press: () async {
                        if ((myPwController.text !=
                                myPwConfirmController.text) |
                            (myPwController.text == '')) {
                          showAlertDialogPwNotMatch(context);
                        } else {
                          // ignore: unused_local_variable
                          var res = register(
                              myEmailController.text, myPwController.text);
                          // print(res);
                          showAlertDialogNewUser(context);
                        }
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),

                    // Sign In
                    SecondarySignIn(
                      action: 'Already have an account? Sign In',
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          ),
                        );
                      },
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
