import 'package:flutter/material.dart';

import '../Pages/ListOrMaps.dart';
import '../Pages/MainPage.dart';
import '../Pages/NewProfile.dart';
import '../Pages/ProfilPage.dart';

class MyBottomBar extends StatefulWidget {
  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int index = 2;
  final List<Widget> child = [
    ListOrMap(),
    MainPage(),
    Newprofile(),
    //Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child[index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: getonTappedBar,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.list_alt),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.people),
              label: "",
            )
          ]),
    );
  }

  void getonTappedBar(int value) {
    setState(() {
      index = value;
    });
  }
}
