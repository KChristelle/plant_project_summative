import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class PlantCareDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Plant Care",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: kBackgroundColor, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                // watering
                PlantCareAction(
                    icon: Icons.pin_drop_outlined, message: "Every 2 weeks"),
                // lighting
                PlantCareAction(
                    icon: Icons.wb_sunny_outlined, message: "Natural Light"),
                // temperature
                PlantCareAction(
                    icon: Icons.thermostat_outlined, message: "Minimum of 20"),
              ],
            ),
            // 'WATER PLANT - DAYS'
            Container(
              margin: EdgeInsets.only(left: kDefaultPadding * 2),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultPadding),
                color: lightGreen,
              ),
              width: 100,
              height: 100,
              child: Column(
                children: [
                  Text(
                    "Water Plant",
                    style: TextStyle(
                      fontSize: 14,
                      color: kBackgroundColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: kBackgroundColor,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(6),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.5),
                        color: lightGreen,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "3",
                            style: TextStyle(
                              fontSize: 12,
                              color: kBackgroundColor,
                            ),
                          ),
                          Text(
                            "Days",
                            style: TextStyle(
                              fontSize: 10,
                              color: kBackgroundColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class PlantCareAction extends StatelessWidget {
  const PlantCareAction({
    Key key,
    this.icon,
    this.message,
  }) : super(key: key);
  final IconData icon;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Container(
            width: kDefaultPadding + 10,
            height: kDefaultPadding + 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: lightGreen,
            ),
            child: Icon(
              icon,
              color: kBackgroundColor,
              size: 20,
            ),
          ),
          SizedBox(width: 8),
          Text(
            message,
            style: TextStyle(
              color: kBackgroundColor,
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
