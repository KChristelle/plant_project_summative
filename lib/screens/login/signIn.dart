import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/firebase_controller.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/login/components/actionButton.dart';
import 'package:plant_growth_tracking_app/screens/login/components/header.dart';
import 'package:plant_growth_tracking_app/screens/login/components/inputField.dart';
import 'package:plant_growth_tracking_app/screens/login/resetPassword.dart';
import 'package:plant_growth_tracking_app/screens/login/signUp.dart';
import '../../data/user.dart';
import 'components/loginAlert.dart';

class SignIn extends StatelessWidget {
  final myEmailController = TextEditingController();
  final myPwController = TextEditingController();

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
              // logo
              Container(
                width: size.height * 0.06,
                height: size.height * 0.06,
                child: Image.asset(
                  "assets/plants-logo.jpg",
                  fit: BoxFit.contain,
                ),
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

              // Container for sign in form
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 20.0),
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
                      height: size.height * 0.06,
                    ),

                    // Sign Up
                    PrimarySignIn(
                      action: "Sign In",
                      backgroundColor: kPrimaryColor,
                      textColor: kBackgroundColor,
                      width: size.width * 0.5,
                      press: () async {
                        bool shouldNavigate = await signIn(
                            myEmailController.text, myPwController.text);

                        if (!shouldNavigate) {
                          showAlertDialogFailedLogin(context);
                        } else {
                          userEmail = myEmailController.text;

                          showAlertDialogNewLogin(context);
                        }
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),

                    Container(
                      // width: size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // create account
                          SecondarySignIn(
                            action: 'Create an account',
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CreateAccount(),
                                ),
                              );
                            },
                          ),

                          // forgot password
                          SecondarySignIn(
                            action: 'Forgot password?',
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResetPassword(),
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
            ],
          ),
        ),
      ),
    );
  }
}
