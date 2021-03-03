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
<<<<<<< HEAD
        preferredSize: Size.fromHeight(40.0),
        child: BuildAppBar(),
      ),
      drawer: BuildNavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.8,
                ),
                PlantImage(),
                PlantDetails(),
              ],
            ),
            CallToAction(),
          ],
        ),
      ),
      bottomNavigationBar: BuildBottomNavigationBar(),
=======
          preferredSize: Size.fromHeight(kDefaultPadding * 2),
          child: AppBarHome()),
      drawer: DrawerHome(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.8,
                ),
                PlantImage(),
                PlantDetails(),
              ],
            ),
            CallToAction(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
>>>>>>> df6f719a57477d364e1403e23d76401da37ad750
    );
  }
}
