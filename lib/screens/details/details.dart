import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset("img1"),
        Container(
          width: size.width * 0.5,
          color: lightGreen,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Container(
                color: kPrimaryColor,
                child: Text("Plant Name"),
              ),
              Container(
                width: 40,
                height: 5,
                color: kPrimaryColor,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 45,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
