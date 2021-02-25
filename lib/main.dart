import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/screens/landingPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(PlantApp());

class PlantApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Growth Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of the application.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme:
            GoogleFonts.ibmPlexSansTextTheme(Theme.of(context).textTheme),
      ),
      home: LandingPage(),
    );
  }
}
