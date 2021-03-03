import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key key,
    this.input,
    this.textInput,
  }) : super(key: key);
  final String input;
  final bool textInput;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 35,
      child: TextField(
        decoration: InputDecoration(
            labelText: input,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              fontSize: 12,
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
        obscureText: textInput,
      ),
    );
  }
}
