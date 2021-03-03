import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class PlantTitle extends StatelessWidget {
  const PlantTitle({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "$title\n",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: country,
                style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          "\$$price",
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}

class UnderlineBar extends StatelessWidget {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: 1,
      color: kPrimaryColor,
    );
  }
}
