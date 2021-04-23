import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/details.dart';
import 'package:plant_growth_tracking_app/screens/home/components/recommendCard.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key key,
  }) : super(key: key);

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
        itemCount: recommendedplants.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: true,
        itemBuilder: (context, index) {
          return RecommendPlantCard(
            image: recommendedplants[index].image,
            title: recommendedplants[index].title,
            country: recommendedplants[index].country,
            location: recommendedplants[index].location,
            action: recommendedplants[index].action,
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
