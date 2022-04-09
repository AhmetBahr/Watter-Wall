import 'package:flutter/material.dart';

import '../AnyPage/Change_Theme_Button.dart';
import 'ListOrMaps.dart';
import 'MainPage.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => Profil();
}

class Profil extends State<Profile> {
  int _currentIndex = 0;
  final String _water_News = 'Water News';
  final String _Empty = " ";

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        actions: [
          ChangeThemeButtonWidget(),
        ],
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade800,
          ),
        ),
      ),
      body: Center(
          child: Column(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          child: Container(
            width: double.infinity,
            height: 150,
            child: Container(
              alignment: Alignment(0.0, 2.5),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    //"https://data.whicdn.com/images/343805041/original.jpg"),
                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
                radius: 60.0,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(right: 200, top: 20),
          height: 20,
          width: 180,
          color: Colors.transparent,
          child: Text(
            "Kullanıcı Adı:",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w700,
                color: Colors.blue.shade700),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(right: 200, top: 10),
          height: 20,
          width: 180,
          color: Colors.transparent,
          child: Text(
            "Şifre:",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w700,
              color: Colors.blue.shade700,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(right: 200, top: 10),
          height: 20,
          width: 180,
          color: Colors.transparent,
          child: Text(
            "Puan:",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w700,
                color: Colors.blue.shade700),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(right: 200, top: 10),
          height: 20,
          width: 180,
          color: Colors.transparent,
          child: Text(
            "Konum:",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w700,
              color: Colors.blue.shade700,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(right: 200, top: 10),
          height: 20,
          width: 180,
          color: Colors.transparent,
          child: Text(
            "Eposta:",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w700,
              color: Colors.blue.shade700,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(right: 200, top: 10),
          height: 20,
          width: 180,
          color: Colors.transparent,
          child: Text(
            "Onaylı Kullanıcı:",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w700,
              color: Colors.blue.shade700,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(right: 200, top: 10),
          height: 20,
          width: 180,
          color: Colors.transparent,
          child: Text(
            "Biyografi:",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w700,
                color: Colors.blue.shade700),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(right: 200, top: 10),
          height: 20,
          width: 180,
          color: Colors.transparent,
          child: Text(
            "Tema:",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w700,
              color: Colors.blue.shade700,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent.shade700,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListOrMap()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.newspaper),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
//Sıray Tarım 
//Github; @siraytarim