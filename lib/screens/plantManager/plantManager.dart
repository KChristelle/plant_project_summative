import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/header.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/plantOverview.dart';

class PlantManager extends StatelessWidget {
  PlantManager(this.plantID);
  final String plantID;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kDefaultPadding * 2),
        child: AppBarHome(
          title: "Plant Manager",
          color: kBackgroundColor,
          textColor: kPrimaryColor,
          iconColor: kPrimaryColor,
        ),
      ),
      drawer: DrawerHome(),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: size.height,
            ),
            HeaderWithPlantDetails(),
            PlantCareDetails(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
