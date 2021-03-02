import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class PlantTile extends StatelessWidget {
  // vars
  final String plantName, imgURL;

  // Constructor
  PlantTile({this.plantName, this.imgURL});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      // margin: EdgeInsets.only(right: 16),
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      // covers 40% of screen
      width: size.width * 0.4,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                // Icon
                Container(
                  margin: EdgeInsets.only(left: 8, top: 8),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.check_circle_outline,
                    color: kBackgroundColor,
                    size: 25,
                  ),
                ),

                // Image
                Container(
                  // width: size.width * 0.6,
                  child: Image.asset(
                    imgURL,
                    fit: BoxFit.contain,
                  ),
                ),

                // Plant Name
                Container(
                  margin: EdgeInsets.only(left: 8, top: 80),
                  alignment: Alignment.center,
                  child: Text(
                    plantName,
                    style: TextStyle(
                      color: kBackgroundColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
