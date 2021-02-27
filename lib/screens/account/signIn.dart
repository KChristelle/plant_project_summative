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
      body: Container(
        // color: Colors.green[800],
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 150),
        decoration: BoxDecoration(
          color: Colors.grey,
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
                height: 10,
              ),
              Text(
                "Plants",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: white,
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
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Planner all plant parents need",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  letterSpacing: 0.5,
                ),
              ),

              SizedBox(
                height: 60,
              ),

              // Container for sign in form
              Container(
                color: Colors.green,
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    // back to landing page
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandingPage()));
                      },
                      backgroundColor: white,
                      child: Icon(
                        Icons.close_outlined,
                        color: black,
                        size: 25,
                      ),
                    ),
                    // first text field "Email"
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
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
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0),
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
