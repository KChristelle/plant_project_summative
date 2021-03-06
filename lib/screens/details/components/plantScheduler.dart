import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/components/listSelector.dart';
import 'package:plant_growth_tracking_app/screens/details/components/careOption.dart';
import 'package:plant_growth_tracking_app/screens/details/components/switch.dart';
import 'package:plant_growth_tracking_app/screens/details/details.dart';

class PlantScheduler extends StatelessWidget {
  PlantScheduler({Key key, this.action});
  final String action;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color sliderColor = kBackgroundColor,
        sliderBackgroundColor = Color(0xffBBB7B7);
    return Positioned(
      top: size.height * 0.2,
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kDefaultPadding),
            topRight: Radius.circular(kDefaultPadding),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2,
                horizontal: kDefaultPadding,
              ),
              child: Row(
                children: [
                  // title bar
                  Text(
                    action,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: kTextColor,
                    ),
                  ),
                  Spacer(),
                  // IconButton(
                  //     icon: Icon(Icons.close),
                  //     iconSize: 20,
                  //     onPressed: () {
                  //       Navigator.of(context).pop();
                  //     }),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlantProfile(1),
                        ),
                      );
                    },
                    child: Text(
                      "x",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: kTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1.0,
              color: Color(0xffBBB7B7),
            ),

            // body
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  // WEEK DAYS

                  //  title
                  SectionTitle(
                    title: "SELECT WEEK DAYS",
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),

                  // days of week
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // monday
                        DayButton(action: "M"),

                        // tuesday
                        DayButton(action: "T"),

                        // wednesday
                        DayButton(action: "W"),

                        // thursday
                        DayButton(action: "T"),

                        // friday
                        DayButton(action: "F"),

                        // saturday
                        DayButton(action: "S"),

                        // sunday
                        DayButton(action: "S"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),

                  // repeat days
                  Row(
                    children: [
                      SectionTitle(
                        title: "REPEAT DAYS",
                      ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),

                      // days selector
                      DaysSelector(),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // amount
                  SectionTitle(
                    title: "AMOUNT",
                  ),
                  SliderAmount(),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  // SizedBox(
                  //   height: kDefaultPadding,
                  // ),

                  // calendar setting
                  // Row(
                  //   children: [
                  //     // calendar icon
                  //     IconButton(
                  //       icon: Icon(Icons.calendar_today),
                  //       iconSize: 20,
                  //       color: kTextColor,
                  //       onPressed: () {
                  //         //
                  //       },
                  //     ),

                  //     SizedBox(
                  //       width: size.width * 0.04,
                  //     ),

                  //     // starting date
                  //     Column(
                  //       children: [
                  //         RichText(
                  //           text: TextSpan(
                  //             children: [
                  //               TextSpan(
                  //                 text: "Starting Date\n",
                  //                 style: TextStyle(
                  //                   fontWeight: FontWeight.w600,
                  //                   letterSpacing: 0.5,
                  //                   fontSize: 12,
                  //                   color: darkGreen,
                  //                 ),
                  //               ),
                  //               TextSpan(
                  //                 text: "Today",
                  //                 style: TextStyle(
                  //                   fontSize: 10,
                  //                   fontWeight: FontWeight.w300,
                  //                   letterSpacing: 0.5,
                  //                   color: darkGreen,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     Spacer(),
                  //     // arrow
                  //     IconButton(
                  //         icon: Icon(Icons.arrow_forward_ios),
                  //         iconSize: 18,
                  //         color: kTextColor,
                  //         onPressed: () {
                  //           Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //               builder: (context) => DateTimePicker(),
                  //             ),
                  //           );
                  //         }),
                  //   ],
                  // ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // TODO: Change color to green
                  DateTimeFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: kPrimaryColor, fontSize: 10),
                      errorStyle: TextStyle(color: Colors.redAccent),
                      border: OutlineInputBorder(),
                      // TODO Find the right shade of green
                      suffixIcon: Icon(Icons.event_note, color: kPrimaryColor),
                      labelText: 'Starting Date',
                    ),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) =>
                        (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Container(
                    height: 1.0,
                    color: Color(0xffBBB7B7),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  // set reminder
                  SectionTitle(
                    title: "SET REMINDER",
                  ),

                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  // morning
                  CareOption(
                    title: "Morning",
                    schedule: "Not set",
                    icon: Icon(
                      Icons.wb_sunny_outlined,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    color: sliderColor,
                    backgroundColor: sliderBackgroundColor,
                    slider: MGreenSwitch(),
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),

                  // evening
                  CareOption(
                    title: "Evening",
                    schedule: "Not set",
                    icon: Icon(
                      Icons.wb_cloudy_outlined,
                      size: 12,
                      color: kBackgroundColor,
                    ),
                    color: sliderColor,
                    backgroundColor: sliderBackgroundColor,
                    slider: EGreenSwitch(),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  SectionTitle({Key key, this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

class DayButton extends StatefulWidget {
  DayButton({Key key, this.action});
  final String action;
  // bool isButtonPressed = false;
  @override
  _DayButtonState createState() => _DayButtonState();
}

class _DayButtonState extends State<DayButton> {
  Color _color = Color(0xff29593C).withOpacity(0.3);
  Color _textColor = kTextColor;
  bool isSelected = false;
  void _toggle() {
    if (isSelected == false) {
      setState(() {
        isSelected = true;
        _color = Color(0xff29593C).withOpacity(0.9);
        _textColor = kBackgroundColor;
      });
    } else {
      setState(() {
        isSelected = false;
        _color = Color(0xff29593C).withOpacity(0.3);
        _textColor = kTextColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      // ignore: deprecated_member_use
      child: RaisedButton(
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(35),
          ),
        ),
        color: _color,
        onPressed: () {
          _toggle();
        },
        child: Text(
          widget.action,
          style: TextStyle(fontSize: 10, color: _textColor),
        ),
      ),
    );
  }
}

class SliderAmount extends StatefulWidget {
  // SliderAmount({Key key, this.unit}) : super(key: key);
  // final String unit;
  @override
  _SliderAmountState createState() => _SliderAmountState();
}

class _SliderAmountState extends State<SliderAmount> {
  double _currentSliderValue = 200;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 500,
      divisions: 5,
      activeColor: Color(0xff29593C),
      inactiveColor: Color(0xffBBB7B7),
      label: _currentSliderValue.round().toString() + ' ml',
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}
