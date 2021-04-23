import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/statistics.dart';

class PlantCareDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.25,
      child: Container(
        width: size.width,
        height: size.height * 0.6,
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: kBackgroundColor,
        ),
        child: Column(
          children: [
            // search plants & title
            TitleWithIcon(
              title: 'Plant Overview',
              icon: Icon(
                Icons.remove_red_eye,
                color: lightGreen,
                size: 20,
              ),
            ),

            SizedBox(
              height: kDefaultPadding,
            ),

            // care statistics
            // hydration
            PlantCareStatistics(
              value: "60%",
              title: "Hydration",
              details: 'Needs 200ml of water each day',
              icon: Icon(
                Icons.water_damage_outlined,
                color: lightGreen.withOpacity(0.5),
                size: 16,
              ),
              newheight: 0.6,
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),

            // fertilizer
            PlantCareStatistics(
              value: "87%",
              title: "Fertilizer",
              details: 'Needs 200g of fertilizer each day',
              icon: Icon(
                Icons.water_damage_outlined,
                color: lightGreen.withOpacity(0.5),
                size: 16,
              ),
              newheight: 0.87,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            // health
            PlantCareStatistics(
              value: "50%",
              title: "Health",
              details: 'Overview of the plants overall health.',
              icon: Icon(
                Icons.healing,
                color: lightGreen.withOpacity(0.5),
                size: 16,
              ),
              newheight: 0.87,
            ),
            // additional statistics
            // AdditionalStatistics(),
          ],
        ),
      ),
    );
  }
}

class TitleWithIcon extends StatelessWidget {
  TitleWithIcon({Key key, this.icon, this.title});
  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: kDefaultPadding / 2,
        ),
        Text(
          title,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}

class PlantCareStatistics extends StatelessWidget {
  PlantCareStatistics({
    Key key,
    this.value,
    this.title,
    this.details,
    this.icon,
    this.newheight,
  });
  final String value, title, details;
  final Icon icon;
  final double newheight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TrackerBuild(
          value: value,
          newheight: newheight,
        ),
        SizedBox(
          width: kDefaultPadding * 2,
        ),

        // details
        Column(
          children: [
            // title
            Row(
              children: [
                icon,
                SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),

            // more details
            Text(
              details,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 11,
                letterSpacing: 0.3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TrackerBuild extends StatelessWidget {
  TrackerBuild({Key key, this.value, this.newheight});
  final String value;
  final double newheight;
  @override
  Widget build(BuildContext context) {
    double defaultwidth = 100, defaultheight = 100;
    return // value
        Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color(0xffE5E5E5),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: defaultwidth * newheight,
            height: defaultheight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                topRight: Radius.circular(40 * newheight),
                bottomRight: Radius.circular(40 * newheight),
              ),
              color: lightGreen.withOpacity(0.8),
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: kBackgroundColor,
            ),
          ),
        ),
        Positioned(
          top: 28,
          left: 25,
          child: Text(
            value,
            style: TextStyle(
              fontSize: 28,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
