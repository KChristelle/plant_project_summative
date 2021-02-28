import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/models/myPlant.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/myPlant.dart';

class MyPlants extends StatefulWidget {
  @override
  _MyPlantsState createState() => _MyPlantsState();
}

class _MyPlantsState extends State<MyPlants> {
  List<MyPlant> myPlants = new List();

  @override
  void initState() {
    super.initState();
    myPlants = getMyPlants();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),

          // search bar
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: Offset(5.0, 5.0),
                  blurRadius: 5.0,
                  color: Colors.black87.withOpacity(0.05),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Search",
                    style: TextStyle(color: kPrimaryColor, fontSize: 17),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_voice,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),

          // My Plants / Favorites
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "My Plants",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  color: kPrimaryColor,
                  width: 50,
                  height: 8,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 22),
            height: 150,
            child: ListView.builder(
                itemCount: myPlants.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return MyPlantsTile(
                    plantName: myPlants[index].plantName,
                    details: myPlants[index].details,
                    imgURL: myPlants[index].imgURL,
                    state: myPlants[index].imgURL,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
