import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/screens/home/components/categoryTitle.dart';
import 'package:plant_growth_tracking_app/screens/home/components/header.dart';
import 'package:plant_growth_tracking_app/screens/home/components/trending.dart';

class MyPlants extends StatelessWidget {
  Widget build(BuildContext context) {
    // Get total height and width of our screen
    // Size size = MediaQuery.of(context).size;

    // Enable scrolling on a small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // covers 20% of our screen
          // HeaderWithSearchBox(size: 200),
          HeaderWithSearchBox(),
          TitleWithMoreBtn(title: "Trending", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured", press: () {}),
          RecomendsPlants(),
        ],
      ),
    );
  }
}
