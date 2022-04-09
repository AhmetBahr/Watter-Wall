import 'package:flutter/material.dart';

import '../Pages/ListOrMaps.dart';
import '../Pages/MainPage.dart';
import '../Pages/ProfilPage.dart';

class ChangePages extends StatefulWidget {
  const ChangePages({Key? key}) : super(key: key);

  @override
  State<ChangePages> createState() => _ChangePagesState();
}

class _ChangePagesState extends State<ChangePages> {
  int currentIndex = 1;

  final screens = [
    ListOrMap(),
    MainPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Water Wall',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade800,
          ),
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade700,
        selectedItemColor: Colors.black87,
        iconSize: 28,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey.shade600,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'List',
            backgroundColor: Colors.blueAccent.shade400,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blueAccent.shade400,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.blueAccent.shade400,
          ),
        ],
      ),
    );
  }
}
