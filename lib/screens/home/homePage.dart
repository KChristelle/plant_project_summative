import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/components/body.dart';
import 'package:plant_growth_tracking_app/screens/login/landingPage.dart';

class HomePage extends StatefulWidget {
  // This widget is the home page of the application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: buildAppBar(),
      drawer: buildNavDrawer(),
      body: MyPlants(),
      bottomNavigationBar:
          buildBottomNavigationBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(
        "Plant App",
      ),
      leading: IconButton(
        // icon: SvgPicture.asset("assets/icons/menu.svg"),
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }

  Theme buildNavDrawer() {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: kPrimaryColor,
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.all(1),
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(5.0),
                    bottomRight: const Radius.circular(5.0),
                  ),
                  color: Colors.white,
                ),
                accountName: Text(
                  "User Name",
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
                accountEmail: Text(
                  "username@gmail.com",
                  style: TextStyle(color: kPrimaryColor),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar.webp"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: darkyellow,
                    child: Text(
                      "A",
                      style: TextStyle(color: kPrimaryColor, fontSize: 25),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: darkyellow,
                    child: Text(
                      "B",
                      style: TextStyle(color: kPrimaryColor, fontSize: 25),
                    ),
                  )
                ]),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.home_outlined,
                color: kBackgroundColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: kBackgroundColor),
              ),
              onTap: null,
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: kBackgroundColor,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 0.0),
              leading: Icon(
                Icons.favorite_border_outlined,
                color: kBackgroundColor,
              ),
              title: Text(
                'Favorites',
                style: TextStyle(color: kBackgroundColor),
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: kBackgroundColor,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 0.0),
              leading: Icon(
                Icons.verified_user_outlined,
                color: kBackgroundColor,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: kBackgroundColor),
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: kBackgroundColor,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 0.0),
              leading: Icon(
                Icons.settings_outlined,
                color: kBackgroundColor,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: kBackgroundColor),
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: kBackgroundColor,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.border_color,
                color: kBackgroundColor,
              ),
              title: Text(
                'Feedback',
                style: TextStyle(color: kBackgroundColor),
              ),
              trailing: Icon(
                Icons.info_rounded,
                color: darkyellow,
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: kBackgroundColor,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.exit_to_app_outlined,
                color: kBackgroundColor,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: kBackgroundColor),
              ),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LandingPage()))
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(500),
              child: InkWell(
                borderRadius: BorderRadius.circular(500),
                splashColor: kPrimaryColor,
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: darkyellow,
                  child: Icon(Icons.arrow_back, color: kPrimaryColor),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }

  Container buildBottomNavigationBar() {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
