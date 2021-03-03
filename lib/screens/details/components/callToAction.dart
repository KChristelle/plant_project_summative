import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/addPlantAlert.dart';
import '../../../data/db_functions.dart';
import '../../../data/user.dart';

class CallToAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 60,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPlantAlert(
                    alertTitle: Text("Welcome to Plant Care"),
                    alertSubtitle: Text("Start taking care of your plants!"),
                    blurValue: 0.05,
                    backgroundOpacity: 0.05,
                  ),
                ),
              );
            },
            child: Text(
              "Add To Plants",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            child: Text("Buy Now"),
          ),
        ),
      ],
    );
  }
}
