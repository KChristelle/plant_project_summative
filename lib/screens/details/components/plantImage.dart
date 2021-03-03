import 'package:flutter/material.dart';

class PlantImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      bottom: size.height * 0.5,
      child: Container(
        height: size.height * 0.3,
        width: size.width,
        child: Image.asset("assets/img1.jpg"),
      ),
    );
  }
}
