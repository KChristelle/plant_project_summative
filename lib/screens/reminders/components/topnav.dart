import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class TitleBar extends StatefulWidget {
  @override
  _TitleBarState createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  // create list of categories to scroll to the right
  List<String> categories = ["Reminders", "History"];

  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                // highlight to show users which page they are currently on
                color: selectedIndex == index ? kPrimaryColor : kTextColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 30,
              // highlight to show users which page they are currently on
              color:
                  selectedIndex == index ? kPrimaryColor : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
