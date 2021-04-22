import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
// ignore: unused_import
import 'package:plant_growth_tracking_app/screens/home/components/categoryTitle.dart';
import 'package:plant_growth_tracking_app/screens/home/components/gridView.dart';
import 'package:plant_growth_tracking_app/screens/home/components/header.dart';
import 'package:plant_growth_tracking_app/screens/home/components/topNav.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBarHome(
          title: "Explore Plants",
          color: kBackgroundColor,
          textColor: kPrimaryColor,
        ),
      ),
      drawer: DrawerHome(),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.04,
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 15),
          //   child: TitleWithMoreBtn(
          //     title: "Explore Plants",
          //     press: () {},
          //   ),
          // ),
          // SizedBox(
          //   height: size.height * 0.03,
          // ),
          SearchBar(),
          Categories(),
          PlantsGridView(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
