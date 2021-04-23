import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/screens/details/components/careOption.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/listSelector.dart';
import 'package:plant_growth_tracking_app/screens/details/fertilize.dart';
import 'package:plant_growth_tracking_app/screens/details/sunlight.dart';
import 'package:plant_growth_tracking_app/screens/details/watering.dart';

class PlantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color sliderColor = kBackgroundColor,
        sliderBackgroundColor = Color(0xffBBB7B7);
    return Positioned(
      top: size.height * 0.24,
      child: Container(
        width: size.width,
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: kBackgroundColor,
        ),
        child: Column(
          children: <Widget>[
            // plant info
            Row(
              children: [
                Title(title: "Plant Info"),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),

            // plant name and location
            Row(
              children: <Widget>[
                // plant name
                Container(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                  child: Column(
                    children: [
                      SubTitle(title: "Plant Name"),
                      // select plant species
                      PlantSpeciesSelector(),
                    ],
                  ),
                ),

                Spacer(),

                // location
                Container(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                  child: Column(
                    children: [
                      SubTitle(title: "Plant Location"),

                      // select plant location
                      PlantLocationSelector(),
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
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
              child: Column(
                children: [
                  Row(
                    children: [
                      SubTitle(title: "Plant Notes"),
                    ],
                  ),

                  // select plant description
                  PlantDescriptionSelector(),
                ],
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),

            // Plant care
            Row(
              children: [
                Title(title: "Plant Care"),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
              width: size.width,
              height: size.height * 0.3,
              child: Column(
                children: <Widget>[
                  // water section
                  CareOption(
                    icon: Icon(
                      Icons.water_damage,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    title: "Water",
                    schedule: "Not Set",
                    color: sliderColor,
                    backgroundColor: sliderBackgroundColor,
                    press: () {
                      // sliderColor = kBackgroundColor;
                      // sliderBackgroundColor = kPrimaryColor;
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => WateringScheduler(),
                      //   ),
                      // );
                    },
                    optionSwitch: WaterSwitch(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // fertilize section
                  CareOption(
                    icon: Icon(
                      Icons.eco_outlined,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    title: "Fertilize",
                    schedule: "Not Set",
                    color: sliderColor,
                    backgroundColor: sliderBackgroundColor,
                    press: () {
                      FertilizerSwitch();
                      // sliderColor = kBackgroundColor;
                      // sliderBackgroundColor = kPrimaryColor;
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => FertilizeScheduler(),
                      //   ),
                      // );
                    },
                    optionSwitch: FertilizerSwitch(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // sunlight
                  CareOption(
                    icon: Icon(
                      Icons.wb_sunny_outlined,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    title: "Sunlight",
                    schedule: "Not Set",
                    color: sliderColor,
                    backgroundColor: sliderBackgroundColor,
                    press: () {
                      // sliderColor = kBackgroundColor;
                      // sliderBackgroundColor = kPrimaryColor;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SunlightScheduler(),
                        ),
                      );
                    },
                    optionSwitch: SunlightSwitch(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  Title({Key key, this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        color: kTextColor,
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  SubTitle({Key key, this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.5,
        color: kTextColor,
      ),
    );
  }
}

// TODO: Optimize switches
// Creating all the switches for each of the care option
// WaterSwitch
class WaterSwitch extends StatefulWidget {
  final Function press;
  final Function action;

  const WaterSwitch({Key key, this.action, this.press}) : super(key: key);
  @override
  _WaterSwitchState createState() => _WaterSwitchState();
}

class _WaterSwitchState extends State<WaterSwitch> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WateringScheduler(),
          ),
        );
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 1,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.white,
            activeTrackColor: lightGreen,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey,
          )),
    ]);
  }
}

// FertilizerSwitch
class FertilizerSwitch extends StatefulWidget {
  final Function press;
  final Function action;

  const FertilizerSwitch({Key key, this.action, this.press}) : super(key: key);
  @override
  _FertilizerSwitchState createState() => _FertilizerSwitchState();
}

class _FertilizerSwitchState extends State<FertilizerSwitch> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FertilizeScheduler(),
          ),
        );
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 1,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.white,
            activeTrackColor: lightGreen,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey,
          )),
    ]);
  }
}

// SunlightSwitch
class SunlightSwitch extends StatefulWidget {
  final Function press;
  final Function action;

  const SunlightSwitch({Key key, this.action, this.press}) : super(key: key);
  @override
  _SunlightSwitchState createState() => _SunlightSwitchState();
}

class _SunlightSwitchState extends State<SunlightSwitch> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SunlightScheduler(),
          ),
        );
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 1,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.white,
            activeTrackColor: lightGreen,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey,
          )),
    ]);
  }
}
