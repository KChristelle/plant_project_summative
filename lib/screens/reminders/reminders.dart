import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/components/header.dart';
// ignore: unused_import
import 'package:plant_growth_tracking_app/screens/home/components/recommends.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import 'package:plant_growth_tracking_app/screens/reminders/components/checklistCard.dart';
import 'package:plant_growth_tracking_app/screens/reminders/components/topnav.dart';

// This widget is the home page of the application. It is stateful, meaning
class Reminders extends StatefulWidget {
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  @override
  _RemindersState createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kDefaultPadding * 2),
        child: AppBarHome(
          title: "Plant App",
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
              DayPicker(
                date: "Monday, Apr 12 2021",
              ),
              DayPicker(
                date: "Tuesday, Apr 13 2021",
              ),
              DayPicker(
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

class DayPicker extends StatelessWidget {
  DayPicker({Key key, this.date});
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: kDefaultPadding * 1.5,
                top: kDefaultPadding / 1.5,
              ),
              child: Text(
                date,
                style: TextStyle(
                  color: kTextColor.withOpacity(0.6),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ],
        ),
        ListView.builder(
          itemCount: checklist.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: true,
          itemBuilder: (context, index) {
            return ChecklistCard(
              image: checklist[index].image,
              icon: checklist[index].icon,
              category: checklist[index].category,
              plantTitle: checklist[index].plantTitle,
              time: checklist[index].time,
              action: checklist[index].action,
            );
          },
        ),
      ],
    );
  }
}
