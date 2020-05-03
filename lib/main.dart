import 'package:fanzone/home_page.dart';
import 'package:fanzone/social_page.dart';
import 'package:fanzone/search_sport_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(FanZoneApp());

class FanZoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppBottomNavBar(),
    );
  }
}

class AppBottomNavBar extends StatefulWidget {
  @override
  _AppBottomNavBar createState() => _AppBottomNavBar();
}

class _AppBottomNavBar extends State<AppBottomNavBar> {

  int _currentNav = 0;
  final List<Widget> _children = [
    SearchSportPage(),
    HomePage(),
    SocialPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentNav],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _currentNav,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.magnify),
            title: Text("Search"),

          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.forum),
            title: Text("Chat"),

          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountGroupOutline),
            title: Text("Social"),

          )
        ],
        onTap: (index){
            onTappedBar(index);
        },
      ),
    );
  }

  void onTappedBar(int index){
    setState(() {
      _currentNav = index;
    });
  }
}
