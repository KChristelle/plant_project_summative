import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class AdditionalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: kDefaultPadding),
        Text(
          "Information",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: kBackgroundColor, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          width: 600,
          height: 200,
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
            style: TextStyle(
              color: kBackgroundColor,
              fontSize: 12,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ],
    );
  }
}
