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
        horizontal: kDefaultPadding,
      ),
      child: ListView.builder(
        itemCount: plantindex,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: true,
        itemBuilder: (context, index) {
          return FeaturedPlantCard(
            image: imgURL[index],
            title: plantSpecies[index],
            location: plantLocation[index],
            action: Icon(Icons.add_circle),
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
