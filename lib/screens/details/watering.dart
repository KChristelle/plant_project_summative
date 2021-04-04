import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/addToPlants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/plantImage.dart';
import 'package:plant_growth_tracking_app/screens/details/components/plantScheduler.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';

class WateringScheduler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kDefaultPadding * 2),
        child: AppBarHome(
          title: "Plant App",
          color: kBackgroundColor,
          textColor: Color(0xff316344).withOpacity(0.63),
        ),
      ),
      drawer: DrawerHome(),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height,
            ),
            PlantImage(),
            PlantScheduler(
              action: "Watering",
            ),
            // CTA
            AddToPlants(
              action: "APPLY",
            ),
          ],
        ),
      ),
    );
  }
}
