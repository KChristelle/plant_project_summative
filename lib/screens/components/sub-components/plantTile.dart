import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/colors.dart';

class PlantTile extends StatelessWidget {
  // vars
  final String plantName, imgURL;

  // Constructor
  PlantTile({this.plantName, this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      // decoration: BoxDecoration(
      //   color: themeGreen,
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                // Image
                Container(
                  height: 150,
                  width: 140,
                  margin: EdgeInsets.only(left: 35, top: 8),
                  child: Image.asset(
                    imgURL,
                    fit: BoxFit.contain,
                  ),
                ),

                // Icon
                Container(
                  height: 25,
                  width: 25,
                  margin: EdgeInsets.only(left: 8, top: 8),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.check_circle_outline,
                    color: white,
                  ),
                ),

                // Plant Name
                Container(
                  height: 50,
                  width: 65,
                  margin: EdgeInsets.only(left: 8, top: 150),
                  alignment: Alignment.center,
                  child: Text(
                    plantName,
                    style: TextStyle(
                      color: white,
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
