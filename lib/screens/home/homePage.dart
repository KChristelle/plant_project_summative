import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/details/details.dart';
import 'package:plant_growth_tracking_app/screens/home/components/body.dart';
import 'package:plant_growth_tracking_app/screens/home/explorePage.dart';
import 'package:plant_growth_tracking_app/screens/home/viewPlants.dart';
import 'package:plant_growth_tracking_app/screens/login/landingPage.dart';
import 'package:plant_growth_tracking_app/screens/reminders/reminders.dart';
import '../../data/user.dart';
import '../../data/db_functions.dart';

class HomePage extends StatefulWidget {
  // This widget is the home page of the application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  int _selectedIndex = 0;

  // ignore: unused_element
  void _onItemTapped(int index) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kDefaultPadding * 2),
        child: AppBarHome(
          title: "",
          color: kPrimaryColor,
          textColor: kBackgroundColor,
          iconColor: kBackgroundColor,
        ),
      ),
      drawer: DrawerHome(),
      body: Plants(),
      bottomNavigationBar:
          BottomNavBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class AppBarHome extends StatelessWidget {
  AppBarHome({
    Key key,
    this.title,
    this.color,
    this.textColor,
    this.iconColor,
  });
  final String title;
  final Color color, textColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: color,
      title: Text(
        title,
        style: TextStyle(
          color: textColor,
        ),
      ),
      iconTheme: IconThemeData(color: iconColor),
      leading: IconButton(
        icon: Icon(Icons.sort_rounded),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: kDefaultPadding / 2,
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding / 2,
        // left: kDefaultPadding * 2,
        // right: kDefaultPadding * 2,
        // bottom: kDefaultPadding,
      ),
      height: 60,
      // height: 80,
      decoration: BoxDecoration(
        color: kBackgroundColor,
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
            icon: Icon(
              Icons.home_outlined,
              color: kPrimaryColor,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: kPrimaryColor,
              // size: 35,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlantProfile(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.grid_view,
              color: kPrimaryColor,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewPlants(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.grass_outlined,
              color: kPrimaryColor,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Reminders(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DrawerHome extends StatefulWidget {
  @override
  _DrawerHomeState createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: kPrimaryColor,
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.all(1),
          children: <Widget>[
            Stack(children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(5.0),
                    bottomRight: const Radius.circular(5.0),
                  ),
                  color: Colors.white,
                ),
                accountEmail: Text(
                  "UserEmail: " + userEmail,
                  style: TextStyle(color: kPrimaryColor),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar.webp"),
                ),
                accountName: null,
              ),
              // Edit icon
              Positioned(
                top: 95,
                left: 73,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xff316344).withOpacity(0.8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.5),
                    ),
                    border: Border.all(
                      color: Color(0xffBBB7B7),
                      width: 1.0,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.edit_rounded),
                    color: kBackgroundColor,
                    iconSize: 16,
                    onPressed: () {},
                  ),
                ),
              ),
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: kBackgroundColor,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: kBackgroundColor,
              ),
              title: Text(
                'My Plants',
                style: TextStyle(color: kBackgroundColor),
              ),
              onTap: () async {
                inventorySize =
                    await DatabaseHelper.instance.getInventoryLength();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewPlants()));
              },
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
                'Reminders',
                style: TextStyle(color: kBackgroundColor),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Reminders()));
              },
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
                'Explore Plants',
                style: TextStyle(color: kBackgroundColor),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExplorePage()));
              },
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
                splashColor: darkGreen,
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: darkyellow,
                  child: Icon(Icons.arrow_back, color: darkGreen),
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
}
