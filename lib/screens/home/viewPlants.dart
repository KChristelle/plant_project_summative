import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/components/header.dart';
import 'package:plant_growth_tracking_app/screens/home/components/topNav.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import '../../data/user.dart';

// ignore: unused_import
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
    Size size = MediaQuery.of(context).size;
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
        child: AppBarHome(
          title: "My Plants",
          color: kBackgroundColor,
          textColor: kPrimaryColor,
          iconColor: kPrimaryColor,
        ),
      ),
      drawer: DrawerHome(),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            SearchBar(),
            Categories(),
            SizedBox(
              height: 550,
              child: GridView.builder(
                itemCount: inventorySize,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPadding / 2,
                  // mainAxisSpacing: kDefaultPadding / 14,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return plants[index];
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
