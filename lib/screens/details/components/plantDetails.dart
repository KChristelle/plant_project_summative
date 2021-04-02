import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/screens/details/components/addToPlants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/careOption.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/selector.dart';

class PlantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.3,
      child: Container(
        // height: size.height * 0.6,
        width: size.width,
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(kDefaultPadding * 2),
          //   topRight: Radius.circular(kDefaultPadding * 2),
          // ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: kDefaultPadding / 3,
            ),

            // plant info
            Row(
              children: [
                Text(
                  "Plant Info",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                    color: kTextColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),

            // plant name and location
            Row(
              children: <Widget>[
                // plant name
                Container(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                  child: Column(
                    children: [
                      Text(
                        "Plant Name",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.5,
                          color: kTextColor,
                        ),
                      ),

                      // select plant species
                      PlantSpeciesSelector(),
                    ],
                  ),
                ),

                Spacer(),

                // location
                Container(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                  child: Column(
                    children: [
                      Text(
                        "Plant Location",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.5,
                          color: kTextColor,
                        ),
                      ),

                      // select plant location
                      PlantLocationSelector(),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: kDefaultPadding / 4,
            ),

            // plant notes
            Container(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Plant Notes",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.5,
                          color: kTextColor,
                        ),
                      ),
                    ],
                  ),

                  // select plant description
                  PlantDescriptionSelector(),
                ],
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),

            // Plant care
            Row(
              children: [
                Text(
                  "Plant Care",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                    color: kTextColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding,
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
              width: size.width,
              height: size.height * 0.3,
              child: Column(
                children: <Widget>[
                  // water section
                  CareOption(
                    icon: Icon(
                      Icons.water_damage,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    title: "Water",
                    schedule: "Not Set",
                    press: () {},
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // fertilize section
                  CareOption(
                    icon: Icon(
                      Icons.water_damage,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    title: "Fertilize",
                    schedule: "Not Set",
                    press: () {},
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // sunlight
                  CareOption(
                    icon: Icon(
                      Icons.wb_sunny_outlined,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    title: "Temperature",
                    schedule: "Not Set",
                    press: () {},
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            AddToPlants(
              action: "Add to My Plants",
            ),
          ],
        ),
      ),
    );
  }
}
