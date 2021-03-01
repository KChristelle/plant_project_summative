import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/login/landingPage.dart';
import 'package:plant_growth_tracking_app/screens/login/signIn.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 150),
        decoration: BoxDecoration(
          color: kTextColor,
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
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Plants",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: darkGreen,
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
                          color: darkGreen,
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 70,
              ),
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
                            color: darkGreen,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                    // create space between the textfields
                    SizedBox(
                      height: 20.0,
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
                                  builder: (context) => LandingPage()));
                        },
                        textColor: kTextColor,
                        color: darkGreen,
                        padding: const EdgeInsets.all(0.0),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            'Send Reset Link',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 8,
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
