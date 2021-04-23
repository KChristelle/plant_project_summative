import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/plantManager/components/iconCard.dart';

class HeaderWithPlantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      bottom: size.height * 0.6,
      child: Stack(
        children: <Widget>[
          // background
          Container(
            height: size.height * 0.35,
            width: size.width,
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              // color: kBackgroundColor,
              color: Color(0xffE5E5E5).withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),

          // plant profile
          Positioned(
            top: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // title
                Text(
                  'Aloe Vera',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: kDefaultPadding * 0.5,
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),

                // details
                Container(
                  width: 220,
                  child: Text(
                    'Aloe vera is a short-stemmed plant growing to 60–100 centimetres tall, spreading by offsets. The leaves are thick and fleshy, green to grey-green, with some varieties showing white flecks on their upper and lower stem surfaces.',
                    style: TextStyle(color: kPrimaryColor, fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),

                // params
                // room temp
                // Row(
                //   children: [
                //     PlantCareParams(
                //       icon: Icons.thermostat_outlined,
                //       title: "Room Temp",
                //       value: "25°C",
                //     ),

                //     SizedBox(
                //       width: kDefaultPadding,
                //     ),

                //     // sunlight
                //     PlantCareParams(
                //       icon: Icons.wb_sunny_outlined,
                //       title: "Sunlight",
                //       value: "60",
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: kDefaultPadding * 1,
                ),

                // state of plant
                //
                // HEALTHY
                // PlantHealthState(
                //   state: "Healthy",
                //   textColor: kPrimaryColor,
                //   backgroundColor: lightGreen.withOpacity(0.5),
                // ),
              ],
            ),
          ),
          // image from plantimage
          Positioned(
            top: size.height * 0.03,
            left: size.width * 0.60,
            child: Container(
              height: size.height * 0.18,
              width: size.height * 0.18,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img0.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(size.height * 0.125),
                ),
                border: Border.all(
                  color: Color(0xffBBB7B7),
                  width: 1.0,
                ),
              ),
            ),
          ),
          // image
          // Positioned(
          //   top: 0,
          //   left: size.width * 0.5,
          //   right: 0,
          //   child: Container(
          //     width: size.width * 0.5,
          //     height: size.height * 0.35,
          //     margin: EdgeInsets.only(left: 19),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //         bottomRight: Radius.circular(36),
          //       ),
          //       image: DecorationImage(
          //         image: AssetImage("assets/img1.jpg"),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class PlantCareParams extends StatelessWidget {
  const PlantCareParams({
    Key key,
    this.icon,
    this.value,
    this.title,
  }) : super(key: key);
  final IconData icon;
  final String value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // title
        Text(
          title,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 12,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(
          height: kDefaultPadding / 3,
        ),

        // icon & value
        Row(
          children: <Widget>[
            IconCard(
              icon: icon,
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              value,
              style: TextStyle(
                color: kTextColor,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PlantHealthState extends StatelessWidget {
  PlantHealthState({Key key, this.state, this.textColor, this.backgroundColor});
  final Color textColor, backgroundColor;
  final String state;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Text(
        state,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
