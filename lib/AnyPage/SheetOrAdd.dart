import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import '../GoogleSheet/SheetsPagess.dart';
import '../Pages/ListOrMaps.dart';
import '../Pages/MainPage.dart';
import '../Pages/ProfilPage.dart';

class AddPages extends StatefulWidget {
  const AddPages({Key? key}) : super(key: key);

  @override
  State<AddPages> createState() => _LOMState();
}

class _LOMState extends State<AddPages> {
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
          AddCard(context),
          ListCard2(context),
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

Widget AddCard(context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.blue.shade600,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://bgcp.bionluk.com/images/portfolio/1400x788/aed4ea54-2bc2-4a61-9411-2a9a9bae9bd8.jpg'),
            height: 240,
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/SheetsApi");
              },
            ),
          ),
          Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Veri girme',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );
Widget ListCard2(context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.blue.shade600,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://is3-ssl.mzstatic.com/image/thumb/Purple116/v4/cf/fb/64/cffb64f3-1512-1f3e-edcb-97d8a4e52d79/logo_sheets_2020q4_color-0-1x_U007emarketing-0-0-0-6-0-0-85-220.png/1200x630wa.png'),
            height: 240,
            fit: BoxFit.cover,
            child: InkWell(onTap: () {
              Navigator.pop(context);
              _urlAc(
                  "https://docs.google.com/spreadsheets/d/1dicnX-QXeem8ciuJxpxzOrrayh9xCr6Oanq9luIWFaI/edit?usp=sharing");
            }),
          ),
          Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Google Sheets',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );

Future _urlAc(String link) async {
  await launch(link);
}
//Ahmet Bahar 
//Github; @AhmetBahr

//Sıray Tarım 
//Github; @siraytarim