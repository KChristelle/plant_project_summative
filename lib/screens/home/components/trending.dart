import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/screens/home/components/plantCard.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: plants.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: true,
        itemBuilder: (context, index) {
          return PlantCard(
            image: plants[index].image,
            title: plants[index].title,
            country: plants[index].country,
            price: plants[index].price,
            // press: plants[index].press,
          );
        },
      ),
    );
  }
}
