import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import '../../../data/db_functions.dart';
import '../../../data/user.dart';

class AddToPlants extends StatelessWidget {
  AddToPlants({
    Key key,
    this.action,
    this.press,
  });
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
            int i = await DatabaseHelper.instance.newUserPlant({
              DatabaseHelper.columnUID: "$userID",
              DatabaseHelper.columnPID: "1",
              DatabaseHelper.columnStatus: "Alive",
              DatabaseHelper.columnHealth: 100,
              DatabaseHelper.columnSun: 100,
              DatabaseHelper.columnWater: 100,
              DatabaseHelper.columnNut: 100
            });
          },
          child: Text(
            action,
            style: TextStyle(
              color: kBackgroundColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
