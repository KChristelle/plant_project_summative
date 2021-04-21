import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          IconButton(
            icon: Icon(Icons.info),
            color: darkGreen,
            onPressed: () {},
          ),
          // ignore: deprecated_member_use
          // FlatButton(
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   color: kPrimaryColor,
          //   onPressed: press,
          //   child: IconButton(
          //     icon: Icon(Icons.info),
          //     color: Colors.white,
          //     onPressed: () {},
          //   ),
          //   // child: Text(
          //   //   "Learn More",
          //   //   style: TextStyle(color: Colors.white),
          //   // ),
          // ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
