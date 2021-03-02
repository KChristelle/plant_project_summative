import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class MyPlantsTile extends StatelessWidget {
  // vars
  final String plantName, details, imgURL, state;
  // final Color stateColor;
  // constructor
  MyPlantsTile({
    this.plantName,
    this.details,
    this.imgURL,
    this.state,
    // this.stateColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 15.0,
            color: kPrimaryColor.withOpacity(0.05),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 105,
            height: 150,
            // Image
            child: Image.asset(
              imgURL,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Plant name
                Text(
                  plantName,
                  style: TextStyle(fontSize: 19),
                ),
                // Details
                Text(
                  details,
                ),
                SizedBox(
                  height: 8,
                ),
                // CTA
                Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: stateColor,
                  ),
                  child: Text(
                    state,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Learn More Icon
                Row(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      size: 50,
                      color: kBackgroundColor,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
