import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class DayBarLevel extends StatelessWidget {
  DayBarLevel({Key key, this.day, this.newlevel});
  final String day;
  final double newlevel; // this is the level of decrease in water level
  @override
  Widget build(BuildContext context) {
    double defaultlevel = (kDefaultPadding * 3); // initial at 100%
    return Container(
      padding: EdgeInsets.only(
        top: kDefaultPadding / 2,
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      child: Column(
        children: [
          // day bar level
          Stack(
            children: [
              Container(
                width: kDefaultPadding / 2,
                height: kDefaultPadding * 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: lightGreen.withOpacity(0.8),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: kDefaultPadding / 2,
                  height: defaultlevel * newlevel, // setting bar height
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    color: Color(0xffE5E5E5),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            day,
            style: TextStyle(
              color: kTextColor,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
