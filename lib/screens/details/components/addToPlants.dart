import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/firebase_controller.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/homePage.dart';
import '../../../data/user.dart';

class AddToPlants extends StatelessWidget {
  AddToPlants({
    Key key,
    this.index,
    this.action,
    this.press,
  });
  final int index;
  final String action;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: (size.width - (size.width / 3)) / 3,
      child: Container(
        margin: EdgeInsets.all(kDefaultPadding),
        width: size.width / 2,
        height: 38,
        // ignore: deprecated_member_use
        child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            color: kPrimaryColor,
            onPressed: () async {
              // ignore: unused_local_variable
              addPlant(userEmail, 100, 100, 100, 100, index);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Center(
              child: Text(
                action,
                style: TextStyle(
                  color: kBackgroundColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            )),
      ),
    );
  }
}
