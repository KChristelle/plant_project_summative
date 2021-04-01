import 'package:flutter/material.dart';
import '../../../data/db_functions.dart';
import '../../../data/user.dart';

class AddToPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.8,
      // bottom: 0,
      child: Container(
        width: size.width / 3,
        height: 60,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          color: Colors.teal[900],
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
      ),
    );
  }
}
