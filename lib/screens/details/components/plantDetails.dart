import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/screens/details/components/callToAction.dart';
import 'package:slider_button/slider_button.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class PlantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      // bottom: 0,
      top: size.height * 0.3,
      child: Container(
        height: size.height * 0.7,
        margin: EdgeInsets.all(kDefaultPadding),
        width: size.width,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kDefaultPadding * 2),
            topRight: Radius.circular(kDefaultPadding * 2),
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: kDefaultPadding / 3,
            ),

            // plant info
            Row(
              children: [
                Text(
                  "Plant Info",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 4,
            ),

            // plant name and location
            Row(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Plant Name",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // PlantNameDropDown(),
                      Text(
                        "Aloe Vera",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        height: 1.0,
                        color: kTextColor,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Plant Location",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Indoor",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        height: 1.0,
                        color: kTextColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 4,
            ),

            // plant notes
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Plant Notes",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Aloe vera is a short-stemmed plant growing to 60–100 centimetres tall, spreading by offsets. The leaves are thick and fleshy, green to grey-green, with some varieties showing white flecks on their upper and lower stem surfaces.",
                    style: TextStyle(
                      fontSize: 12,
                      color: kTextColor.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1.0,
              color: kTextColor,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),

            // Plant care
            Row(
              children: [
                Text(
                  "Plant Care",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),

            // water section
            CareOption(
              icon: Icon(
                Icons.water_damage,
                size: 16,
                color: kBackgroundColor.withOpacity(0.5),
              ),
              title: "Water",
              schedule: "Not Set",
              press: () {},
            ),
            Container(
              height: 1.0,
              color: kTextColor,
            ),
            SizedBox(
              height: kDefaultPadding / 4,
            ),

            // fertilize section
            CareOption(
              icon: Icon(
                Icons.water_damage,
                size: 16,
                color: kBackgroundColor.withOpacity(0.5),
              ),
              title: "Fertilize",
              schedule: "Not Set",
              press: () {},
            ),
            Container(
              height: 1.0,
              color: kTextColor,
            ),
            SizedBox(
              height: kDefaultPadding / 4,
            ),

            // sunlight
            CareOption(
              icon: Icon(
                Icons.water_damage,
                size: 16,
                color: kBackgroundColor.withOpacity(0.5),
              ),
              title: "Sunlight",
              schedule: "Not Set",
              press: () {},
            ),
            Container(
              height: 1.0,
              color: kTextColor,
            ),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            AddToPlants(),
          ],
        ),
      ),
    );
  }
}

class PlantNameDropDown extends StatefulWidget {
  @override
  _PlantNameDropDownState createState() => _PlantNameDropDownState();
}

class _PlantNameDropDownState extends State<PlantNameDropDown> {
  String dropdownValue = 'None';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 18,
      elevation: 16,
      style: TextStyle(color: kTextColor),
      underline: Container(
        height: 2,
        color: kTextColor,
      ),
      items: <String>['Aloe Vera', 'Cactus', 'Angelica']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: Text("Enter plant"),
      onChanged: (String value) {
        setState(() {
          dropdownValue = value;
        });
      },
    );
  }
}

class CareOption extends StatelessWidget {
  CareOption({Key key, this.icon, this.title, this.schedule, this.press});
  final String title, schedule;
  final Icon icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        // icon
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12.5),
            ),
            color: lightGreen.withOpacity(0.8),
          ),
          child: icon,
        ),
        SizedBox(
          width: size.width * 0.05,
        ),

        // schedule
        Column(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            Text(
              schedule,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ],
        ),

        // slider button
        Spacer(),
        SliderButton(
          action: press,
          label: Text(''),
          width: 60,
          height: 25,
          backgroundColor: kTextColor.withOpacity(0.5),
          buttonColor: kBackgroundColor,
          buttonSize: 22,
          icon: null,
        ),
      ],
    );
  }
}
