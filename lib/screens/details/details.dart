import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/callToAction.dart';
import 'package:plant_growth_tracking_app/screens/details/components/plantDetails.dart';
import 'package:plant_growth_tracking_app/screens/details/components/plantImage.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDefaultPadding * 2),
          child: AppBarHome()),
      drawer: DrawerHome(),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.8,
              ),
              PlantImage(),
              PlantDetails(),
              CallToAction(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
