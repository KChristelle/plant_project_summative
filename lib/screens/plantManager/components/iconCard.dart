import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.005),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-5, -5),
            blurRadius: 20,
            color: kBackgroundColor,
          ),
        ],
      ),
      child: Icon(
        icon,
        color: darkyellow.withOpacity(0.4),
      ),
    );
  }
}
