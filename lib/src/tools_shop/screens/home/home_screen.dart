import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fisharp/src/tools_shop/constants.dart';
import 'package:fisharp/src/tools_shop/screens/home/components/body.dart';
import 'package:fisharp/src/sidebar/bloc.navigation_bloc/navigation_bloc.dart';

class HomeScreen extends StatelessWidget with NavigationStates{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context)  {
    return AppBar(

      backgroundColor: Colors.white54,
      elevation: 0,
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back),
      //     onPressed: () {
      //       // Navigate back to the first screen by popping the current route
      //       // off the stack.
      //       Navigator.pop(context);
      //     },
      // ),
      actions: <Widget>[

        IconButton(
          icon: Icon(Icons.search,
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart,
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
