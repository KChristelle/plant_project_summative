// import 'package:flutter/material.dart';
// import 'package:plant_growth_tracking_app/resources/constants.dart';
// import 'package:plant_growth_tracking_app/screens/home/homePage.dart';

// class PlantManager extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: PreferredSize(
//           preferredSize: Size.fromHeight(kDefaultPadding * 2),
//           child: AppBarHome()),
//       drawer: DrawerHome(),
//       body: Container(
//         height: 600,
//         width: 400,
//         decoration: BoxDecoration(color: kPrimaryColor),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               HeaderWithPlantDetails(size: size),
//               // PlantCareDetails(),
//               // AdditionalInfo(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HeaderWithPlantDetails extends StatelessWidget {
//   const HeaderWithPlantDetails({
//     Key key,
//     @required this.size,
//   }) : super(key: key);

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
//       // It will cover 20% of our total height
//       height: size.height * 0.25,
//       width: size.width,
//       child: Stack(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(
//               left: kDefaultPadding,
//               right: kDefaultPadding,
//               bottom: 36 + kDefaultPadding,
//             ),
//             height: size.height * 0.25 - 27,
//             width: size.width,
//             decoration: BoxDecoration(
//               // image: DecorationImage(
//               //     image: AssetImage("assets/img1.jpg"), fit: BoxFit.cover),
//               color: kBackgroundColor,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(36),
//                 bottomRight: Radius.circular(36),
//               ),
//             ),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Positioned(
//                         left: 0,
//                         top: 20.0,
//                         child: Container(
//                             child: Column(
//                           children: <Widget>[
//                             Text(
//                               'Plant Name',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .headline5
//                                   .copyWith(
//                                       color: kPrimaryColor,
//                                       fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               'Details',
//                               style:
//                                   TextStyle(color: kPrimaryColor, fontSize: 12),
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: lightGreen,
//                                 borderRadius: BorderRadius.only(
//                                   bottomLeft: Radius.circular(15),
//                                   bottomRight: Radius.circular(15),
//                                 ),
//                               ),
//                               child: Text(
//                                 "Healthy",
//                                 style: TextStyle(color: kPrimaryColor),
//                               ),
//                             ),
//                           ],
//                         )),
//                       ),
//                       Positioned(
//                         left: 200,
//                         top: 20,
//                         child: Container(
//                           width: 10,
//                           height: 20,
//                           child: Image.asset(
//                             "img1.jpg",
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PlantCareDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Text(
//           "Plant Care",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 25,
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Row(
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 // watering
//                 Container(
//                   child: Row(
//                     children: <Widget>[
//                       Icon(Icons.pin_drop), // change to water droplet

//                       SizedBox(width: 8),

//                       Text("Every 2 weeks"),
//                     ],
//                   ),
//                 ),

//                 // light
//                 Container(
//                   child: Row(
//                     children: [
//                       Icon(Icons.wb_sunny),
//                       SizedBox(width: 8),
//                       Text("Natural Light"),
//                     ],
//                   ),
//                 ),

//                 // temperature
//                 Container(
//                   child: Row(
//                     children: [
//                       Icon(Icons.thermostat_outlined),
//                       SizedBox(width: 8),
//                       Text("Minimum of 20"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             // 'WATER PLANT'
//             Container(
//               color: kBackgroundColor,
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

// class AdditionalInfo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: 20),
//         Text(
//           "Information",
//           style:
//               TextStyle(fontWeight: FontWeight.bold, color: kBackgroundColor),
//         ),
//         Text(
//             "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, "),
//       ],
//     );
//   }
// }
