import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class PlantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      top: size.height * 0.35,
      child: Container(
        height: size.height * 0.7,
        width: size.width,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kDefaultPadding * 2),
            topRight: Radius.circular(kDefaultPadding * 2),
          ),
        ),


        // child:
        // 
        // 
      ),
    );
  }
}
