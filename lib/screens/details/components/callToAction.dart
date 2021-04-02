import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import '../../../data/db_functions.dart';
import '../../../data/user.dart';

class AddToPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2.5,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
        ),
        color: kPrimaryColor,
        onPressed: () async {
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
          "Add to My Plants",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
