import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/colors.dart';
import 'package:plant_growth_tracking_app/screens/components/body.dart';
import 'package:plant_growth_tracking_app/screens/landingPage.dart';

class HomePage extends StatefulWidget {
  // This widget is the home page of the application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

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
      appBar: buildAppBar(),
      drawer: buildNavDrawer(),
      body: MyPlants(),
      bottomNavigationBar:
          buildBottomNavigationBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(
        "Plants Tracker",
        style: TextStyle(color: themeGreen),
      ),
      backgroundColor: Colors.grey[350],
    );
  }

  Theme buildNavDrawer() {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: themeGreen,
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
                    color: themeGreen,
                  ),
                ),
                accountEmail: Text(
                  "username@gmail.com",
                  style: TextStyle(color: themeGreen),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar.webp"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: yellow,
                    child: Text(
                      "A",
                      style: TextStyle(color: themeGreen, fontSize: 25),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: yellow,
                    child: Text(
                      "B",
                      style: TextStyle(color: themeGreen, fontSize: 25),
                    ),
                  )
                ]),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.home_outlined,
                color: white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: white),
              ),
              onTap: null,
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: white,
              ),
              title: Text(
                'My Plants',
                style: TextStyle(color: white),
              ),
              onTap: null,
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 0.0),
              leading: Icon(
                Icons.favorite_border_outlined,
                color: white,
              ),
              title: Text(
                'Favorites',
                style: TextStyle(color: white),
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 0.0),
              leading: Icon(
                Icons.verified_user_outlined,
                color: white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: white),
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 0.0),
              leading: Icon(
                Icons.settings_outlined,
                color: white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: white),
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.border_color,
                color: white,
              ),
              title: Text(
                'Feedback',
                style: TextStyle(color: white),
              ),
              trailing: Icon(
                Icons.info_rounded,
                color: yellow,
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.exit_to_app_outlined,
                color: white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: white),
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
                splashColor: themeGreen,
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: yellow,
                  child: Icon(Icons.arrow_back, color: themeGreen),
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

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'My Plants',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: _selectedIndex,
      selectedItemColor: themeGreen,
      unselectedItemColor: themeGreen,
      iconSize: 25,
      onTap: _onItemTapped,
      elevation: 5,
    );
  }
}
