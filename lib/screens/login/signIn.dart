import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/login/components/actionButton.dart';
import 'package:plant_growth_tracking_app/screens/login/components/header.dart';
import 'package:plant_growth_tracking_app/screens/login/components/inputField.dart';
import 'package:plant_growth_tracking_app/screens/login/resetPassword.dart';
import 'package:plant_growth_tracking_app/screens/login/signUp.dart';
import '../../data/db_functions.dart';
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
                height: size.height * 0.08,
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
                      height: size.height * 0.06,
                    ),

                    // Sign Up
                    PrimarySignIn(
                      action: "Sign In",
                      backgroundColor: kPrimaryColor,
                      textColor: kBackgroundColor,
                      width: size.width * 0.4,
                      press: () async {
                        int userid = await DatabaseHelper.instance.checkUser(
                            myEmailController.text, myPwController.text);

                        if (userid == 0) {
                          showAlertDialogFailedLogin(context);
                        } else {
                          userEmail = myEmailController.text;
                          userID = userid;
                          showAlertDialogNewLogin(context);
                        }
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),

                    Container(
                      width: size.width * 0.4,
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
                          SizedBox(
                            width: 50,
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
