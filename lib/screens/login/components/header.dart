import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 8,
        ),
        Container(
          width: 35,
          height: 4,
          decoration: BoxDecoration(
            color: kPrimaryColor,
          ),
        ),
        SizedBox(
          height: kDefaultPadding + 8,
        ),
        Text(
          "Welcome to a owner's best planner.",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 12,
            letterSpacing: 0.2,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "Let's get started!",
          style: TextStyle(
            fontSize: 12,
            color: kPrimaryColor,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
