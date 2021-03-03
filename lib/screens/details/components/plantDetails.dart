import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/description.dart';
import 'package:plant_growth_tracking_app/screens/details/components/iconCard.dart';
import 'package:plant_growth_tracking_app/screens/details/components/plantTitle.dart';

class PlantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      top: size.height * 0.35,
      child: Container(
        height: size.height * 0.7,
        width: size.width,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kDefaultPadding * 2),
            topRight: Radius.circular(kDefaultPadding * 2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding,
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: PlantTitle(
                  title: "Angelica",
                  country: "Russia",
                  price: 440,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              UnderlineBar(),
              Container(
                height: size.height * 0.25,
                padding: EdgeInsets.only(top: kDefaultPadding / 2),
                child: Row(
                  children: <Widget>[
                    PlantDescription(
                      description:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        IconCard(icon: Icons.add_alert),
                        IconCard(icon: Icons.shopping_cart_outlined),
                        IconCard(icon: Icons.favorite_outline),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
