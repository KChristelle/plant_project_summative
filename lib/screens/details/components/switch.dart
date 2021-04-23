import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/fertilize.dart';
import 'package:plant_growth_tracking_app/screens/details/sunlight.dart';
import 'package:plant_growth_tracking_app/screens/details/watering.dart';

class MGreenSwitch extends StatefulWidget {
  @override
  _MGreenSwitchState createState() => _MGreenSwitchState();
}

class _MGreenSwitchState extends State<MGreenSwitch> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => DateTimePicker(),
        //   ),
        // );
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

class EGreenSwitch extends StatefulWidget {
  @override
  _EGreenSwitchState createState() => _EGreenSwitchState();
}

class _EGreenSwitchState extends State<EGreenSwitch> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => DateTimePicker(),
        //   ),
        // );
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

class WGreenSwitch extends StatefulWidget {
  @override
  _WGreenSwitchState createState() => _WGreenSwitchState();
}

class _WGreenSwitchState extends State<WGreenSwitch> {
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

class FGreenSwitch extends StatefulWidget {
  @override
  _FGreenSwitchState createState() => _FGreenSwitchState();
}

class _FGreenSwitchState extends State<FGreenSwitch> {
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

class SGreenSwitch extends StatefulWidget {
  @override
  _SGreenSwitchState createState() => _SGreenSwitchState();
}

class _SGreenSwitchState extends State<SGreenSwitch> {
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
