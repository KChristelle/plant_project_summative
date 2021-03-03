import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class HeaderWithPlantDetails extends StatelessWidget {
  const HeaderWithPlantDetails({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 1.5),
      width: size.width,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
            ),
            height: size.height * 0.3,
            width: size.width,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Positioned(
                  top: kDefaultPadding,
                  bottom: kDefaultPadding,
                  left: 0,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Plant Name',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Details',
                          style: TextStyle(color: kPrimaryColor, fontSize: 14),
                        ),
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                        Container(
                          width: 100,
                          height: 30,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: lightGreen,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Text(
                            "Healthy",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kPrimaryColor,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: size.width * 0.4,
                  child: Container(
                    width: size.width * 0.5,
                    height: size.height * 0.4,
                    margin: EdgeInsets.only(left: 19),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(36),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/img1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
