import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/components/header.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/screens/reminders/components/topnav.dart';
import 'package:plant_growth_tracking_app/screens/reminders/components/dayPicker.dart';

// This widget is the home page of the application. It is stateful, meaning
class Reminders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kDefaultPadding * 2),
        child: AppBarHome(
          title: "Reminders",
          color: kBackgroundColor,
          textColor: Color(0xff316344).withOpacity(0.63),
          iconColor: Color(0xff316344).withOpacity(0.63),
        ),
      ),
      drawer: DrawerHome(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              SearchBar(),
              TitleBar(),
              ReminderCards(
                date: "Monday, Apr 12 2021",
              ),
              ReminderCards(
                date: "Tuesday, Apr 13 2021",
              ),
              ReminderCards(
                date: "Wednesday, Apr 14 2021",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
