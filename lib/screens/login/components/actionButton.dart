import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class PrimarySignIn extends StatelessWidget {
  PrimarySignIn({
    Key key,
    this.action,
    this.backgroundColor,
    this.textColor,
    this.press,
    this.width,
  });
  final String action;
  final Color backgroundColor, textColor;
  final Function press;
  final double width;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: width,
      height: size.height * 0.05,
      child: RaisedButton(
        onPressed: press,
        textColor: textColor,
        color: backgroundColor,
        padding: const EdgeInsets.all(0.0),
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            action,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}

class SecondarySignIn extends StatelessWidget {
  SecondarySignIn({
    Key key,
    this.action,
    this.press,
  });
  final String action;
  final Function press;
  Widget build(BuildContext context) {
    return FlatButton(
      hoverColor: kBackgroundColor,
      focusColor: kBackgroundColor,
      onPressed: press,
      child: Text(
        action,
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
