import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class ChecklistCard extends StatelessWidget {
  const ChecklistCard({
    Key key,
    this.image,
    this.icon,
    this.category,
    this.plantTitle,
    this.time,
    this.action,
  }) : super(key: key);
  final String image, category, plantTitle, time;
  final Icon icon;
  final bool action;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      padding: EdgeInsets.all(kDefaultPadding),
      margin: EdgeInsets.only(
        left: kDefaultPadding * 1.5,
        right: kDefaultPadding * 1.5,
        top: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.7),
      ),
      child: Row(
        children: [
          // image
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage("assets/img1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: size.width * 0.05),

          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: category + '\n',
                  style: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                TextSpan(
                  text: plantTitle + ' - ' + time,
                  style: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 12,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: kDefaultPadding,
            height: kDefaultPadding,
            // decoration: BoxDecoration(
            //   color: kBackgroundColor,
            // ),
            child: Checkbox(
              checkColor: kBackgroundColor,
              activeColor: kBackgroundColor,
              value: false,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}
