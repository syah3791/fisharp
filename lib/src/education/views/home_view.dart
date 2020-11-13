import 'package:flutter/material.dart';
import 'package:fisharp/src/education/constants.dart';
import 'package:fisharp/src/education/views/popular_tab_view.dart';
import 'package:fisharp/src/education/views/recent_tab_view.dart';
import 'package:fisharp/src/education/views/trending_tab_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "NEWS",
                  textAlign: TextAlign.end,
                  style: kNonActiveTabStyle,
                ),
                // leading: IconButton(
                //   icon: Icon(Icons.arrow_back),
                //   onPressed: () {
                //     // Navigate back to the first screen by popping the current route
                //     // off the stack.
                //     Navigator.pop(context);
                //   },
                // ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: kGrey1,
                  unselectedLabelStyle: kNonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: kActiveTabStyle.copyWith(fontSize: 25.0),
                  tabs: [
                    Tab(text: "Popular"),
                    Tab(text: "Trending"),
                    Tab(text: "Recent"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PopularTabView(),
            TrendingTabView(),
            RecentTabView(),
          ],
        ),
      ),
    );
  }
}
