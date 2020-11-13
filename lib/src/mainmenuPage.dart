import 'package:flutter/material.dart';

import 'package:fisharp/src/sidebar/sidebar/sidebar_layout.dart';
import 'package:fisharp/src/tools_shop/screens/home/home_screen.dart';
import 'package:fisharp/src/education/bottomNav.dart';

int _selectedIndex = 0;
class MainMenuPage extends StatelessWidget {
  final appTitle = 'Fisharp Menu';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: SideBarLayout(),
    );
  }
}

List<Widget> _bottomNavView = [
  BottomNav(),
  HomeScreen(),
];

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text(title)),
      body:  SafeArea(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      drawer: Container(
          width: MediaQuery.of(context).size.width * 0.65,
          child: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                new UserAccountsDrawerHeader(
                    accountName: Text("Demo"),
                    accountEmail: Text("demo@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                      child: Text("D",style: TextStyle(fontSize: 40.0),
                      ),
                    ),
                    otherAccountsPictures: <Widget>[
                      CircleAvatar(
                        backgroundColor:
                        Theme.of(context).platform == TargetPlatform.iOS
                            ? Colors.blue
                            : Colors.white,
                        child: Image.asset(
                          "assets/images/fisharp_logo2.png",
                        ),
                      ),
                    ]
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text('Tools Shop'),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.history_edu),
                  title: Text('Education'),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => BottomNav()));
                  },
                ),
              ],
            ),
          ),
      ),
    );
  }
}