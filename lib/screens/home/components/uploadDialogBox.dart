import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class UploadPictureDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0.0, right: 0.0),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 18.0,
            ),
            margin: EdgeInsets.only(top: 13.0, right: 8.0),
            decoration: BoxDecoration(
                // color: Colors.red,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 0.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 5.0,
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new Text("Upload a Picture",
                      style: TextStyle(fontSize: 30.0, color: Colors.white)),
                ) //
                    ),
                SizedBox(height: 15.0),
                Container(
                  alignment: Alignment.center,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Open Camera'),
                    style: ElevatedButton.styleFrom(
                      primary: lightGreen, // background
                      onPrimary: Colors.white, // foreground
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Upload from Gallery',
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Gallery',
                        style: TextStyle(
                            color: kBackgroundColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    )),
              ],
            ),
          ),
          Positioned(
            right: 0.0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
