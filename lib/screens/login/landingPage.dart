import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/screens/login/components/loginBody.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/landing.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: LoginBody(),
      ),
    );
  }
}
