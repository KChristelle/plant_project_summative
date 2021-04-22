import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/components/featuredCard.dart';

class FeaturesPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.4,
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: ListView.builder(
        itemCount: plants.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: true,
        itemBuilder: (context, index) {
          return FeaturedPlantCard(
            image: plantsWithLocation[index].image,
            title: plantsWithLocation[index].title,
            country: plantsWithLocation[index].country,
            location: plantsWithLocation[index].location,
            action: plantsWithLocation[index].action,
          );
        },
      ),
    );
  }
}
