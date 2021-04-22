import 'package:flutter/material.dart';

class CareOptionButton extends StatelessWidget {
  CareOptionButton(
      {Key key, this.action, this.textColor, this.backgroundColor, this.press});
  final String action;
  final Color textColor, backgroundColor;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 20,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: TextButton(
        onPressed: press,
        child: Text(
          action,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            letterSpacing: 1,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
