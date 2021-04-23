import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
// ignore: unused_import
import 'package:plant_growth_tracking_app/screens/details/fertilize.dart';
import 'package:plant_growth_tracking_app/screens/details/watering.dart';

class GreenSwitch extends StatefulWidget {
  final Function press;
  final Function action;

  const GreenSwitch({Key key, this.action, this.press}) : super(key: key);
  @override
  _GreenSwitchState createState() => _GreenSwitchState();
}

class _GreenSwitchState extends State<GreenSwitch> {
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