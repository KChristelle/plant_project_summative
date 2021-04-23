import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/firebase_controller.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
// ignore: unused_import
import 'package:plant_growth_tracking_app/screens/home/components/gridView.dart';
import 'package:plant_growth_tracking_app/screens/home/components/header.dart';
import 'package:plant_growth_tracking_app/screens/home/components/topNav.dart';
import 'package:plant_growth_tracking_app/screens/home/components/usersPlantCard.dart';

import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
// ignore: unused_import
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


    inventorySize = user_plants.length;




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
              height: size.height * 0.03,
            ),
            SearchBar(),
            Categories(),
            SizedBox(
              height: 587,
              child: GridView.builder(
                // Removed the "invertorysize " variable
                // because it is not have a limited size. It created an infinite
                // number of plant cards. Find the var in user.dart
                itemCount: inventorySize,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPadding / 20,
                  mainAxisSpacing: kDefaultPadding / 20,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (BuildContext context, int index) {
                  // return userplants[index];

                  List<dynamic> row = user_plants[index];
                  return  UserPlantCard(
                    image: "assets/img${row[2]}.jpg",
                    title: plantSpecies[row[2]],
                    country: "Russia",
                    action: Icon(Icons.add_circle),
                    location: plantLocation[row[2]],
                    plantID: row[0],
                    press: () {},
                  );

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