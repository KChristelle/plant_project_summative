import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class CareOption extends StatelessWidget {
  CareOption({
    Key key,
    this.icon,
    this.title,
    this.schedule,
    this.color,
    this.backgroundColor,
    this.slider,
    // Add another global var
  });
  final String title, schedule;
  final Icon icon;
  final Color color, backgroundColor;
  final Widget slider;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        // icon
        Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(11),
            ),
            color: Color(0xff316344).withOpacity(0.63),
          ),
          child: icon,
        ),
        SizedBox(
          width: size.width * 0.04,
        ),

        // schedule
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  fontSize: 15,
                  color: darkGreen,
                ),
              ),
              TextSpan(
                text: '\n' + schedule,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.5,
                  color: darkGrey,
                ),
              ),
            ],
          ),
        ),

        // slider button
        Spacer(),
        slider,
//         SliderButton(
//           action: press,
//           label: Text(''),
//           width: 35,
//           height: 16,
//           backgroundColor: backgroundColor,
//           buttonColor: color,
//           buttonSize: 12,
//           icon: null,
//           boxShadow: BoxShadow(color: kBackgroundColor, blurRadius: 4),
//         ),
      ],
    );
  }
}
