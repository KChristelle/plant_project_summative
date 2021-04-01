import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // It will cover 25% of our total height
      height: size.height * 0.25,
      width: size.width,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.25 - 25,
            width: size.width,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Explore\n',
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                color: kBackgroundColor,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 5,
                                fontSize: 40,
                              ),
                        ),
                        TextSpan(
                          text: 'Add new plants to your family',
                          style: TextStyle(
                            color: kBackgroundColor,
                            fontSize: 14,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.height * 0.08,
                    height: size.height * 0.08,
                    child: Image.asset(
                      "assets/logo.PNG",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.18,
            height: 30,
            width: size.width,
            child: Container(
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: SearchBar(),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding + 5),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
      height: 43,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
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
          Expanded(
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
