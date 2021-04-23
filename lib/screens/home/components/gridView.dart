import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/details.dart';
import 'package:plant_growth_tracking_app/screens/home/components/usersPlantCard.dart';

class PlantsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 587,
      child: GridView.builder(
        itemCount: plantindex,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: kDefaultPadding / 2,
          // mainAxisSpacing: kDefaultPadding / 14,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (BuildContext context, int index) {
          return UserPlantCard(
            image: imgURL[index],
            title: plantSpecies[index],
            location: plantLocation[index],
            action: Icon(Icons.add_circle),
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlantProfile(2)));
            },
          );
        },
      ),
    );
  }
}
