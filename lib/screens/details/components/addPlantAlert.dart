import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class AddPlantAlert extends StatefulWidget {
  final Text alertTitle;
  final Text alertSubtitle;
  // Higher values mean more blurred overlays.
  final double blurValue;
  final double backgroundOpacity;

  AddPlantAlert({
    Key key,
    @required this.alertTitle,
    @required this.alertSubtitle,
    this.blurValue,
    this.backgroundOpacity,
  }) : super(key: key);

  createState() => _AddPlantAlertState();
}

class _AddPlantAlertState extends State<AddPlantAlert> {
  double deviceWidth;
  double deviceHeight;
  double dialogHeight;

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    Size screenSize = MediaQuery.of(context).size;

    deviceWidth = orientation == Orientation.portrait
        ? screenSize.width
        : screenSize.height;
    deviceHeight = orientation == Orientation.portrait
        ? screenSize.height
        : screenSize.width;
    dialogHeight = deviceHeight * (3 / 7);

    return MediaQuery(
      data: MediaQueryData(),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: widget.blurValue != null ? widget.blurValue : 3.0,
          sigmaY: widget.blurValue != null ? widget.blurValue : 3.0,
        ),
        child: Container(
          height: deviceHeight,
          color: kBackgroundColor.withOpacity(widget.backgroundOpacity != null
              ? widget.backgroundOpacity
              : 0.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 0.0,
                      child: Container(
                        height: dialogHeight,
                        width: deviceWidth * 0.9,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                          ),
                          color: kBackgroundColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: dialogHeight / 4),
                              widget.alertTitle,
                              SizedBox(height: dialogHeight / 10),
                              widget.alertSubtitle,
                              SizedBox(height: dialogHeight / 10),
                              _defaultAction(context),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: dialogHeight - 50,
                      child: _defaultIcon(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Image _defaultIcon() {
    return Image(
      image: AssetImage("packages/rich_alert/assets/success.png"),
      width: deviceHeight / 7,
      height: deviceHeight / 7,
    );
  }

  Container _defaultAction(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RaisedButton(
        elevation: 2.0,
        color: lightGreen,
        child: Text(
          "View Plants",
          style: TextStyle(color: kBackgroundColor),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ViewPlants(),
          //   ),
          // );
        },
      ),
    );
  }
}

Text richTitle(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 28.0,
      color: kPrimaryColor,
    ),
  );
}

Text richSubtitle(String subtitle) {
  return Text(
    subtitle,
    style: TextStyle(
      color: kPrimaryColor,
    ),
  );
}
