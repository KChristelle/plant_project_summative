import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/details.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.location,
    this.action,
  }) : super(key: key);
  final String image, title, country, location;
  final Icon action;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      width: size.width * 0.6,
      child: Column(
        children: <Widget>[
          // Image
          Container(
            height: size.height * 0.26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlantProfile(),
                ),
              );
            },

            // details
            child: Container(
              // height: size.height * 0.05,
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            height: kDefaultPadding,
                            child: Text("$title\n".toUpperCase(),
                                textAlign: TextAlign.left,
                                style: Theme.of(context).textTheme.button),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.place_outlined,
                            size: 12,
                            color: kPrimaryColor.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: kDefaultPadding / 5,
                          ),
                          Text(
                            "$location",
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: action,
                    color: kPrimaryColor,
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlantProfile()));
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
