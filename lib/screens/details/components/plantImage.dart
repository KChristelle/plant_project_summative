import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:plant_growth_tracking_app/resources/constants.dart';
// ignore: unused_import
import 'package:plant_growth_tracking_app/screens/home/components/uploadDialogBox.dart';

class PlantImage extends StatelessWidget {
  PlantImage(this.index);
  final int index;
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
            color: Color(0xffE5E5E5),
          ),

          // Image
          Positioned(
            top: size.height * 0.025,
            left: size.width * 0.30,
            child: Container(
              height: size.height * 0.20,
              width: size.height * 0.20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img$index.jpg"),
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

          // Edit icon
          // Positioned(
          //   top: size.height * 0.2125,
          //   left: size.width * 0.25 + size.height * 0.20,
          //   child: Container(
          //     width: 26,
          //     height: 26,
          //     decoration: BoxDecoration(
          //       color: Color(0xff316344).withOpacity(0.8),
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(12.5),
          //       ),
          //       border: Border.all(
          //         color: Color(0xffBBB7B7),
          //         width: 1.0,
          //       ),
          //     ),
          //     child: IconButton(
          //       icon: Icon(Icons.add_photo_alternate_rounded),
          //       color: kBackgroundColor,
          //       iconSize: 15,
          //       onPressed: () {
          //         showDialog(
          //             context: context,
          //             builder: (BuildContext context) => UploadPictureDialog());
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
