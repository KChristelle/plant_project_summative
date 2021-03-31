import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class InputField extends StatelessWidget {
  InputField({
    Key key,
    this.label,
    this.hideText,
    this.controller,
  });
  final String label;
  final bool hideText;
  final TextEditingController controller;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: kPrimaryColor,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
        ),
        obscureText: hideText,
      ),
    );
  }
}
