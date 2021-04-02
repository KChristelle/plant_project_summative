import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class PlantImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      bottom: size.height * 0.7,
      child: Stack(
        children: <Widget>[
          // background
          Container(
            height: size.height * 0.35,
            width: size.width,
            color: darkGrey.withOpacity(0.5),
          ),

          // Image
          Positioned(
            top: size.height * 0.025,
            left: size.width * 0.38,
            child: Container(
              height: size.height * 0.25,
              width: size.height * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img1.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(size.height * 0.125),
                ),
                border: Border.all(
                  color: kTextColor,
                  width: 1.0,
                ),
              ),
            ),
          ),

          // Edit icon
          Positioned(
            top: size.height * 0.2125,
            left: size.width * 0.38 + size.height * 0.20,
            child: Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: lightGreen,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.5),
                ),
              ),
              child: Icon(
                Icons.edit_rounded,
                color: kBackgroundColor,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
