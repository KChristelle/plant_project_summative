import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class LoginHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          // logo
          Container(
            width: size.height * 0.06,
            height: size.height * 0.06,
            child: Image.asset(
              "assets/plants-logo.jpg",
              fit: BoxFit.contain,
            ),
          ),
          // Title
          AppTitle(),
          SizedBox(
            height: size.height * 0.03,
          ),

          // Welcome message
          welcome(),
          SizedBox(
            height: size.height * 0.03,
          ),
        ],
      ),
    );
  }
}

class AppTitle extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Plants",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kPrimaryColor,
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
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}

Text welcome() {
  return Text(
    "Welcome to a plant owner's best planner.\nLet's get started!",
    textAlign: TextAlign.center,
    style: TextStyle(
      color: kPrimaryColor,
      fontSize: 12,
      letterSpacing: 0.5,
    ),
  );
}
