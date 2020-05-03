import 'package:flutter/material.dart';

class SearchSportPage extends StatefulWidget {
  @override
  _SearchSportPageState createState() => _SearchSportPageState();
}

class _SearchSportPageState extends State<SearchSportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Search Sport Page"),
      ),
      body: new Center(
        child: new Text("Search Sport Page"),
      ),
    );
  }
}
