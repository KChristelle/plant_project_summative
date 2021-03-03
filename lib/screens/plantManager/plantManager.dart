import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/header.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/moreInfo.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/plantDetails.dart';

class PlantManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kDefaultPadding * 2),
        child: BuildAppBar(),
      ),
      drawer: BuildNavDrawer(),
      body: Container(
        decoration: BoxDecoration(color: kPrimaryColor),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWithPlantDetails(size: size),
              PlantCareDetails(),
              AdditionalInfo(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BuildBottomNavigationBar(),
    );
  }
}
