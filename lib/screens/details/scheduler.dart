import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/addToPlants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/plantImage.dart';
import 'package:plant_growth_tracking_app/screens/details/components/selector.dart';
import 'package:plant_growth_tracking_app/screens/details/components/careOption.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';

class Scheduler extends StatelessWidget {
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
        ),
      ),
      drawer: DrawerHome(),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: size.height,
              ),
              PlantImage(),
              PlantScheduler(action: "Watering",),
            ],
          ),
        ],
      ),
    );
  }
}

class PlantScheduler extends StatelessWidget {
  PlantScheduler({Key key, this.action});
  final String action;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.3,
      child: Container(
        // height: size.height * 0.6,
        width: size.width,
        // padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: kBackgroundColor,
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              child: Row(
                children: [
                  // title bar
                  Text(
                    action,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      color: kTextColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "x",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      color: kTextColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1.0,
              color: Color(0xffBBB7B7),
            ),

            // body
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  // WEEK DAYS

                  //  title
                  SectionTitle(
                    title: "SELECT WEEK DAYS",
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),

                  // days of week
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // monday
                      DayButton(action: "M"),

                      // tuesday
                      DayButton(action: "T"),

                      // wednesday
                      DayButton(action: "W"),

                      // thursday
                      DayButton(action: "T"),

                      // friday
                      DayButton(action: "F"),

                      // saturday
                      DayButton(action: "S"),

                      // sunday
                      DayButton(action: "S"),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),

                  // repeat days
                  Row(
                    children: [
                      SectionTitle(
                        title: "REPEAT DAYS",
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),

                      // days selector
                      DaysSelector(),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),

                  // calendar setting
                  Row(
                    children: [
                      // calendar icon
                      Icon(
                        Icons.calendar_today,
                        size: 20,
                        color: kTextColor,
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),

                      // starting date
                      Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Starting Date\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5,
                                    fontSize: 12,
                                  ),
                                ),
                                TextSpan(
                                  text: "Today",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      // arrow
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 18,
                        color: kTextColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // set reminder
                  SectionTitle(
                    title: "SET REMINDER",
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),

                  // morning
                  CareOption(
                    title: "Morning",
                    schedule: "Not set",
                    icon: Icon(
                      Icons.wb_sunny_outlined,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    press: () {},
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),

                  // evening
                  CareOption(
                    title: "Evening",
                    schedule: "Not set",
                    icon: Icon(
                      Icons.wb_cloudy_outlined,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    press: () {},
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // CTA
                  AddToPlants(
                    action: "APPLY",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  SectionTitle({Key key, this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

class DayButton extends StatelessWidget {
  DayButton({Key key, this.action});
  final String action;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        color: Color(0xff29593C).withOpacity(0.63),
        onPressed: () {},
        child: Text(
          action,
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
