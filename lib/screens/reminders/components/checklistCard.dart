import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class ChecklistCard extends StatefulWidget {
  ChecklistCard({
    Key key,
    this.image,
    this.icon,
    this.category,
    this.plantTitle,
    this.time,
    this.action,
  }) : super(key: key);
  final String image, category, plantTitle, time;
  final Icon icon;
  final bool action;

  @override
  _ChecklistCardState createState() => new _ChecklistCardState();
}

class _ChecklistCardState extends State<ChecklistCard> {
  Color _backgroundColor = kPrimaryColor.withOpacity(0.63);
  Icon _icon = Icon(Icons.check_box_outline_blank_outlined);
  void _onSelected() {
    setState(() {
      _backgroundColor = kPrimaryColor.withOpacity(0.9);
      _icon = Icon(Icons.check_box_outlined);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      padding: EdgeInsets.all(kDefaultPadding),
      margin: EdgeInsets.only(
        left: kDefaultPadding * 1.5,
        right: kDefaultPadding * 1.5,
        top: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: _backgroundColor,
      ),
      child: Row(
        children: [
          // image
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage("assets/img1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: size.width * 0.05),

          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.category + '\n',
                  style: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                TextSpan(
                  text: widget.plantTitle + ' - ' + widget.time,
                  style: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 12,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            color: kBackgroundColor,
            icon: _icon,
            onPressed: () {
              _onSelected();
            },
          ),
        ],
      ),
    );
  }
}
