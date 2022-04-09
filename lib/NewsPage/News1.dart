import 'package:flutter/material.dart';

class News1 extends StatefulWidget {
  const News1({Key? key, required String title}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<News1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Haber Detayları:",
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            margin: EdgeInsetsDirectional.all(10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "İstanbul'un Trakya'dan su ihtiyacını önemli oranda karşılayan, 5 ay önce kuruma noktasına gelen Kazandere, Pabuçdere ve Istrancalar barajlarındaki doluluk oranları, son dönemdeki yağmur ve karlar ile yüzde 95'lere ulaştı. Geçen yıl Ekim ayında yüzde 8,02'ye düşen Kazandere Barajı'nın doluluk oranı yüzde 95,51'e çıkarken, 3,19 olan Pabuçdere Barajı'nda da doluluk oranı yüzde 95,83'e yükseldi.",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
