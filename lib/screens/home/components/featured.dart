import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/details.dart';
import 'package:plant_growth_tracking_app/screens/home/components/featuredCard.dart';

class FeaturesPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.4,
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.5,
      ),
      child: ListView.builder(
        itemCount: featuredplants.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: true,
        itemBuilder: (context, index) {
          return FeaturedPlantCard(
            image: featuredplants[index].image,
            title: featuredplants[index].title,
            country: featuredplants[index].country,
            location: featuredplants[index].location,
            action: featuredplants[index].action,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlantProfile()));
            },
          );
        },
      ),
    );
  }
}
