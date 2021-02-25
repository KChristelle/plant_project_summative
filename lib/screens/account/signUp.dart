import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/colors.dart';
import 'package:plant_growth_tracking_app/screens/landingPage.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: grey,
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
                height: 70,
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
                  color: white,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Planner all plant parents need",
                style: TextStyle(color: white, fontSize: 12),
              ),
              SizedBox(
                height: 60,
              ),

              // back to landing page
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LandingPage()));
                },
                backgroundColor: white,
                child: Icon(
                  Icons.close_rounded,
                  color: black,
                  size: 35,
                ),
              ),

              SizedBox(height: 60),

              // Email
              Container(
                width: 250,
                height: 35,
                child: RaisedButton(
                  onPressed: null,
                  textColor: black,
                  color: white,
                  padding: const EdgeInsets.all(0.0),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Email',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              // Password
              Container(
                width: 250,
                height: 35,
                child: RaisedButton(
                  onPressed: null,
                  textColor: black,
                  color: white,
                  padding: const EdgeInsets.all(0.0),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Password',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              // Confirm Password
              Container(
                width: 250,
                height: 35,
                child: RaisedButton(
                  onPressed: null,
                  textColor: black,
                  color: white,
                  padding: const EdgeInsets.all(0.0),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Confirm Password',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              // Sign Up
              Container(
                width: 250,
                height: 35,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccount()));
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
                      'Sign Up',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              // already have an account? sign in
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateAccount()));
                },
                child: Text(
                  'Already have an account? Sign In',
                  style: TextStyle(color: black, fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
