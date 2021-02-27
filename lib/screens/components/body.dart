import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/models/plant.dart';
import 'package:plant_growth_tracking_app/resources/colors.dart';
import 'package:plant_growth_tracking_app/screens/components/sub-components/plantTile.dart';

class MyPlants extends StatefulWidget {
  @override
  _MyPlantsState createState() => _MyPlantsState();
}

class _MyPlantsState extends State<MyPlants> {
  List<Plant> plants = new List();

  @override
  void initState() {
    super.initState();
    plants = getPlants();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),

          // My Plants
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "My Plants",
                  style: TextStyle(
                    color: black,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: themeGreen,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 12,
          ),
          Container(
            width: 30,
            height: 5,
            padding: EdgeInsets.symmetric(horizontal: 22),
            color: black,
          ),

          SizedBox(
            height: 20,
          ),

          // Plant Tiles
          Container(
            padding: EdgeInsets.only(left: 22),
            height: 200,
            child: ListView.builder(
              itemCount: plants.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return PlantTile(
                  imgURL: plants[index].imgURL,
                  plantName: plants[index].plantName,
                );
              },
            ),
          ),

          SizedBox(
            height: 40,
          ),

          // Explore Plants
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Explore",
                  style: TextStyle(
                    color: black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 12,
          ),
          Container(
            width: 30,
            height: 5,
            padding: EdgeInsets.symmetric(horizontal: 22),
            color: black,
          ),

          SizedBox(
            height: 20,
          ),

          // Plant Tiles
          Container(
            padding: EdgeInsets.only(left: 22),
            height: 150,
            width: 120,
            child: ListView.builder(
              itemCount: plants.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return PlantTile(
                  imgURL: plants[index].imgURL,
                  plantName: plants[index].plantName,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
