import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class CallToAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.7,
      // bottom: 0,
      child: Row(
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
              color: Colors.teal[900],
              onPressed: () {},
              child: Text(
                "Add to My Plants",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width / 2,
            height: 60,
            child: FlatButton(
              onPressed: () {},
              child: Text("Buy Now"),
              color: kBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
