import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fisharp/src/education/views/account_view.dart';
import 'package:fisharp/src/education/views/favorite_view.dart';
import 'package:fisharp/src/education/views/home_view.dart';
import 'package:fisharp/src/education/views/search_view.dart';
import 'package:fisharp/src/sidebar/bloc.navigation_bloc/navigation_bloc.dart';

class BottomNav extends StatefulWidget with NavigationStates{
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _bottomNavView = [
    HomeView(),
    SearchView(),
    FavoriteView(),
    AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   currentIndex: _selectedIndex,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   type: BottomNavigationBarType.fixed,
      //   onTap: _onItemTapped,
      //   items: _navBarList
      //       .map(
      //         (e) => BottomNavigationBarItem(
      //           icon: SvgPicture.asset(
      //             e.icon,
      //             width: 24.0,
      //           ),
      //           activeIcon: SvgPicture.asset(
      //             e.activeIcon,
      //             width: 24.0,
      //           ),
      //           title: Text(e.title),
      //         ),
      //       )
      //       .toList(),
      // ),
    );
  }
}

class NavBarItem {
  final String icon;
  final String activeIcon;
  final String title;
  NavBarItem({this.icon, this.activeIcon, this.title});
}

List<NavBarItem> _navBarList = [
  NavBarItem(
    icon: "assets/home.svg",
    activeIcon: "assets/home_2.svg",
    title: "Home",
  ),
  NavBarItem(
    icon: "assets/search.svg",
    activeIcon: "assets/search_2.svg",
    title: "Search",
  ),
  NavBarItem(
    icon: "assets/favorite.svg",
    activeIcon: "assets/favorite_2.svg",
    title: "Favorite",
  ),
  NavBarItem(
    icon: "assets/account.svg",
    activeIcon: "assets/account_2.svg",
    title: "Account",
  ),
];
