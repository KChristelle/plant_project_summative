import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/components/categoryTitle.dart';
import 'package:plant_growth_tracking_app/screens/home/components/featured.dart';
import 'package:plant_growth_tracking_app/screens/home/components/header.dart';
// ignore: unused_import
import 'package:plant_growth_tracking_app/screens/home/components/indoor.dart';
// ignore: unused_import
import 'package:plant_growth_tracking_app/screens/home/components/outdoor.dart';
import 'package:plant_growth_tracking_app/screens/home/components/recommends.dart';

class Plants extends StatelessWidget {
  Widget build(BuildContext context) {
    // Get total height and width of our screen
    Size size = MediaQuery.of(context).size;

    // Enable scrolling on a small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // covers 20% of our screen
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "My Plants", press: () {}),
          RecommendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturesPlants(),
          // TitleWithMoreBtn(title: "Indoor Plants", press: () {}),
          // IndoorPlants(),
          // TitleWithMoreBtn(title: "Outdoor Plants", press: () {}),
          // OutdoorPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
