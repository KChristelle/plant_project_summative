import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';
import 'package:plant_growth_tracking_app/screens/home/components/body.dart';
import 'package:plant_growth_tracking_app/screens/login/landingPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: BuildAppBar(),
      ),
      drawer: BuildNavDrawer(),
      body: Plants(),
      bottomNavigationBar:
          BuildBottomNavigationBar(), // This trailing comma makes auto-formatting nicer for build methods.
=======
      // backgroundColor: Colors.red,

      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDefaultPadding * 2),
          child: AppBarHome()),
      drawer: DrawerHome(),
      body: Plants(),
      bottomNavigationBar:
          BottomNavBar(), // This trailing comma makes auto-formatting nicer for build methods.
>>>>>>> df6f719a57477d364e1403e23d76401da37ad750
    );
  }
}

<<<<<<< HEAD
class BuildAppBar extends StatelessWidget {
=======
class AppBarHome extends StatelessWidget {
>>>>>>> df6f719a57477d364e1403e23d76401da37ad750
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(
        "Plant App",
        style: TextStyle(color: kTextColor),
      ),
<<<<<<< HEAD
=======
      // leading: IconButton(
      //   icon: Icon(
      //     Icons.menu,
      //     color: kTextColor,
      //   ),
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => DrawerHome()));
      //   },
      // ),
>>>>>>> df6f719a57477d364e1403e23d76401da37ad750
      backgroundColor: Colors.grey,
    );
  }
}
<<<<<<< HEAD

class BuildNavDrawer extends StatelessWidget {
=======

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
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
      selectedItemColor: darkGreen,
      unselectedItemColor: darkGreen,
      iconSize: 25,
      onTap: _onItemTapped,
      elevation: 5,
    );
  }
}

class DrawerHome extends StatefulWidget {
  @override
  _DrawerHomeState createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
>>>>>>> df6f719a57477d364e1403e23d76401da37ad750
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: darkGreen,
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.all(1),
          children: <Widget>[
            UserAccountsDrawerHeader(
<<<<<<< HEAD
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
=======
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
                    color: darkGreen,
                  ),
                ),
                accountEmail: Text(
                  "username@gmail.com",
                  style: TextStyle(color: darkGreen),
>>>>>>> df6f719a57477d364e1403e23d76401da37ad750
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
<<<<<<< HEAD
                CircleAvatar(
                  backgroundColor: darkyellow,
                  child: Text(
                    "B",
                    style: TextStyle(color: kPrimaryColor, fontSize: 25),
                  ),
                )
              ],
            ),
=======
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: darkyellow,
                    child: Text(
                      "A",
                      style: TextStyle(color: darkGreen, fontSize: 25),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: darkyellow,
                    child: Text(
                      "B",
                      style: TextStyle(color: darkGreen, fontSize: 25),
                    ),
                  )
                ]),
>>>>>>> df6f719a57477d364e1403e23d76401da37ad750
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
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: kBackgroundColor,
              ),
              title: Text(
                'My Plants',
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
<<<<<<< HEAD
}

class BuildBottomNavigationBar extends StatelessWidget {
  Widget build(BuildContext context) {
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
=======
>>>>>>> df6f719a57477d364e1403e23d76401da37ad750
}
