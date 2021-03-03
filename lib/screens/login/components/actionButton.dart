import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key key,
    this.press,
    this.action,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);
  final Function press;
  final String action;
  final Color backgroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 35,
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
