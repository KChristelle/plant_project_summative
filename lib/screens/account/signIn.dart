import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/colors.dart';
import 'package:plant_growth_tracking_app/screens/account/resetPassword.dart';
import 'package:plant_growth_tracking_app/screens/account/signUp.dart';
import 'package:plant_growth_tracking_app/screens/homePage.dart';
import 'package:plant_growth_tracking_app/screens/landingPage.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 150),
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
              image: AssetImage("assets/landing.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          width: 400,
          height: 600,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()));
                    },
                  ),
                ],
              ),

              // SizedBox(
              //   height: 10,
              // ),

              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
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
                        height: 10,
                      ),
                      Container(
                        width: 35,
                        height: 4,
                        decoration: BoxDecoration(
                          color: themeGreen,
                        ),
                      ),
                    ],
                  )),

              SizedBox(
                height: 60,
              ),

              // Container for sign in form
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    // first text field "Email"
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: themeGreen,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                    // create space between the textfields
                    SizedBox(
                      height: 20.0,
                    ),
                    // second text field "Password"
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: themeGreen,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    // Sign In
                    Container(
                      width: 250,
                      height: 35,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        textColor: white,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateAccount()));
                          },
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                                color: themeGreen,
                                fontSize: 11.0,
                                fontWeight: FontWeight.bold),
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
                            style: TextStyle(
                                color: themeGreen,
                                fontSize: 11.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
