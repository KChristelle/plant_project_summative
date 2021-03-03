import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class FeaturedPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
        itemCount: plants.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: kDefaultPadding / 2,
          // mainAxisSpacing: kDefaultPadding / 14,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (BuildContext context, int index) {
          return plants[index];
        },
      ),
    );
  }
}
