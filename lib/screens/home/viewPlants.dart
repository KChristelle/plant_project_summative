import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/components/body.dart';
import 'package:plant_growth_tracking_app/screens/home/components/featured.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/screens/login/landingPage.dart';

import 'components/categoryTitle.dart';

// This widget is the home page of the application. It is stateful, meaning
class ViewPlants extends StatefulWidget {
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  @override
  _ViewPlantsState createState() => _ViewPlantsState();
}

class _ViewPlantsState extends State<ViewPlants> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // backgroundColor: Colors.red,

      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDefaultPadding * 2),
          child: AppBarHome()),
      drawer: DrawerHome(),
      body: TitleWithMoreBtn(title: "My Plants", press: () {}),
      bottomNavigationBar:
          BottomNavBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
