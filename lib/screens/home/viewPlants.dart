import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import '../../data/user.dart';

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
          child: BuildAppBar()),
      drawer: BuildBottomNavigationBar(),
      body: Container(
          child: Column(children: [
        TitleWithMoreBtn(title: "My Plants", press: () {}),
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
        )
      ])),
      bottomNavigationBar:
          BuildBottomNavigationBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
