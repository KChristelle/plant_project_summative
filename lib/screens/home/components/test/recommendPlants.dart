import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/models/plant.dart';
import 'package:plant_growth_tracking_app/screens/home/components/test/plantTile.dart';

class RecommendsPlants extends StatefulWidget {
  @override
  _RecommendsPlantsState createState() => _RecommendsPlantsState();
}

class _RecommendsPlantsState extends State<RecommendsPlants> {
  List<Plant> plants = new List();

  @override
  void initState() {
    super.initState();
    plants = getPlants();
  }

  @override
  Widget build(BuildContext context) {
    // covers 40% of our screen
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: ListView.builder(
          itemCount: plants.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return PlantTile(
                imgURL: plants[index].imgURL,
                plantName: plants[index].plantName);
          },
        ),
      ),
    );
  }
}
