import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../GoogleSheet/SheetsPagess.dart';
import '../Pages/ListOrMaps.dart';
import '../Pages/MainPage.dart';
import '../Pages/ProfilPage.dart';

class DenemeMap extends StatefulWidget {
  const DenemeMap({Key? key}) : super(key: key);

  @override
  State<DenemeMap> createState() => _LOMState();
}

class _LOMState extends State<DenemeMap> {
  int _selectedIndex = 0;
  final String _Baraj = "Google Maps";
  final String _List = "Google Sheets";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
      body: ListView(
        children: [
          Map(context),
        ],
      ),
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

Widget Map(context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.blue.shade600,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://i.pinimg.com/564x/54/c5/6c/54c56cdc336614598c2f9317b1da0eb0.jpg'),
            height: 240,
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {},
            ),
          ),
        ],
      ),
    );
//Ahmet Bahar 
//Github; @AhmetBahr

//Sıray Tarım 
//Github; @siraytarim