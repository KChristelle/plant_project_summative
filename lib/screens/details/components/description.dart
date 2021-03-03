import 'package:flutter/material.dart';

class PlantDescription extends StatelessWidget {
  const PlantDescription({
    Key key,
    this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      child: Text(
        description,
        style: TextStyle(fontSize: 12, letterSpacing: 0.8),
      ),
    );
  }
}
