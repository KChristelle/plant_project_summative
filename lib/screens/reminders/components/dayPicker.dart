import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/reminders/components/checklistCard.dart';

class ReminderCards extends StatelessWidget {
  ReminderCards({Key key, this.date});
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: kDefaultPadding * 1.5,
                top: kDefaultPadding / 1.5,
              ),
              child: Text(
                date,
                style: TextStyle(
                  color: kTextColor.withOpacity(0.6),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ],
        ),
        ListView.builder(
          itemCount: checklist.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: true,
          itemBuilder: (context, index) {
            return ChecklistCard(
              image: checklist[index].image,
              icon: checklist[index].icon,
              category: checklist[index].category,
              plantTitle: checklist[index].plantTitle,
              time: checklist[index].time,
              action: checklist[index].action,
            );
          },
        ),
      ],
    );
  }
}
