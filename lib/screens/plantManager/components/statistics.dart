import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/careOptionButton.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/dayBar.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/plantOverview.dart';

class AdditionalStatistics extends StatefulWidget {
  @override
  _AdditionalStatisticsState createState() => _AdditionalStatisticsState();
}

class _AdditionalStatisticsState extends State<AdditionalStatistics> {
  Color _selectedColor = lightGreen.withOpacity(0.5),
      _unselectedColor = kBackgroundColor;
  List barLevels = [1.0, 0.9, 0.6, 0.5, 0.0, 0.1, 0.8];
  void _onCareOptionSelected() {
    setState(() {
      _selectedColor = kBackgroundColor;
      _unselectedColor = lightGreen.withOpacity(0.5);
      barLevels = [0.0, 1.0, 0.6, 0.2, 0.0, 0.1, 0.1];
    });
  }

  void _onCareOptionUnSelected() {
    setState(() {
      _selectedColor = lightGreen.withOpacity(0.5);
      _unselectedColor = kBackgroundColor;
      barLevels = [1.0, 0.9, 0.6, 0.5, 0.0, 0.1, 0.8];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // title bar
        Row(
          children: [
            TitleWithIcon(
              title: "Statistics",
              icon: Icon(
                Icons.bar_chart_outlined,
                color: lightGreen,
                size: 20,
              ),
            ),
            Spacer(),

            // care option button

            // hydration
            CareOptionButton(
              action: "Hydration",
              textColor: kPrimaryColor,
              backgroundColor: _selectedColor,
              press: () {
                _onCareOptionUnSelected();
              },
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            ),

            // fertilizer
            CareOptionButton(
              action: "Fertilizer",
              textColor: kPrimaryColor,
              backgroundColor: _unselectedColor,
              press: () {
                _onCareOptionSelected();
              },
            ),
          ],
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),

        // bar levels

        // day bar
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DayBarLevel(
              day: "Sun",
              newlevel: barLevels[0],
            ),
            DayBarLevel(
              day: "Mon",
              newlevel: barLevels[1],
            ),
            DayBarLevel(
              day: "Tue",
              newlevel: barLevels[2],
            ),
            DayBarLevel(
              day: "Wed",
              newlevel: barLevels[3],
            ),
            DayBarLevel(
              day: "Thur",
              newlevel: barLevels[4],
            ),
            DayBarLevel(
              day: "Fri",
              newlevel: barLevels[5],
            ),
            DayBarLevel(
              day: "Sat",
              newlevel: barLevels[6],
            ),
          ],
        ),
      ],
    );
  }
}
