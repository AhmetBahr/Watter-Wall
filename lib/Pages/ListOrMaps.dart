import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import '../GoogleSheet/SheetsPagess.dart';
import 'MainPage.dart';
import 'ProfilPage.dart';

class ListOrMap extends StatefulWidget {
  const ListOrMap({Key? key}) : super(key: key);

  @override
  State<ListOrMap> createState() => _LOMState();
}

class _LOMState extends State<ListOrMap> {
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
          BarajCard(context),
          ListCard(context),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget BarajCard(context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.blue.shade600,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://www.trustedreviews.com/wp-content/uploads/sites/54/2020/02/Google-Maps-Icon-920x517.jpg'),
            height: 240,
            fit: BoxFit.cover,
            child: InkWell(onTap: () {
              Navigator.pop(context);
              _urlAc2(
                  "https://www.google.com/maps/place/Türkiye/@39.001038,30.6761084,6z/data=!3m1!4b1!4m5!3m4!1s0x14b0155c964f2671:0x40d9dbd42a625f2a!8m2!3d38.963745!4d35.243322");
            }),
          ),
          Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Google Maps',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );

Widget ListCard(context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.blue.shade600,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlPrlNkUVScR62up8SKLyeFs80xfBktL28BknRJ5T0keT2fLZXTgO7SMGZ2MDOMhyMFNs&usqp=CAU'),
            height: 240,
            fit: BoxFit.cover,
            child: InkWell(onTap: () {
              Navigator.pushNamed(context, "/AddPages");
            }),
          ),
          Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Go Sheets',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );

Future _urlAc2(String link) async {
  await launch(link);
}
