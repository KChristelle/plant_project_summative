import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/plantOverview.dart';

class AdditionalStatistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // title bar
        Row(
          children: [
            TitleWithIcon(
              title: "Statistics",
              icon: Icon(
                Icons.bar_chart_outlined,
                color: lightGreen,
                size: 20,
              ),
            ),
            Spacer(),

            // care option button

            // hydration
            CareOptionButton(
              action: "Hydration",
              textColor: kPrimaryColor,
              backgroundColor: lightGreen.withOpacity(0.5),
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            ),

            // fertilizer
            CareOptionButton(
              action: "Fertilizer",
              textColor: kPrimaryColor,
              backgroundColor: kBackgroundColor,
            ),
          ],
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),

        // bar levels

        // day bar
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DayBarLevel(
              day: "Sun",
              newlevel: 0.2,
            ),
            DayBarLevel(
              day: "Mon",
              newlevel: 0.5,
            ),
            DayBarLevel(
              day: "Tue",
              newlevel: 0.8,
            ),
            DayBarLevel(
              day: "Wed",
              newlevel: 0.0,
            ),
            DayBarLevel(
              day: "Thur",
              newlevel: 0.1,
            ),
            DayBarLevel(
              day: "Fri",
              newlevel: 0.2,
            ),
            DayBarLevel(
              day: "Sat",
              newlevel: 1.0,
            ),
          ],
        ),
      ],
    );
  }
}

class CareOptionButton extends StatelessWidget {
  CareOptionButton(
      {Key key, this.action, this.textColor, this.backgroundColor});
  final String action;
  final Color textColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 20,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Text(
        action,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          letterSpacing: 1,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

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
