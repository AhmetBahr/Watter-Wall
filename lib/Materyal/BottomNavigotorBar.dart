import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Pages/ListOrMaps.dart';
import '../Pages/MainPage.dart';
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
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child[index],
      bottomNavigationBar: GNav(
          onTap:( getonTappedBar){,
          currentIndex: index,
          }
          items: [
            GButton(icon: Icons.list_alt, text: ''),
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
