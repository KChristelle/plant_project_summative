import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/screens/home/components/categoryTitle.dart';
import 'package:plant_growth_tracking_app/screens/home/components/featured.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: BuildAppBar(),
      ),
      drawer: BuildNavDrawer(),
      body: Column(
        children: [
          TitleWithMoreBtn(
            title: "Explore Plants",
          ),
          FeaturedPlants(),
        ],
      ),
      bottomNavigationBar: BuildBottomNavigationBar(),
    );
  }
}
