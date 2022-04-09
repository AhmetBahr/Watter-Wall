import 'package:flutter/material.dart';

class News2 extends StatefulWidget {
  const News2({Key? key, required String title}) : super(key: key);

  @override
  _Details2State createState() => _Details2State();
}

class _Details2State extends State<News2> {
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
                    "Sorumluluk bölgelerindeki Diyarbakır, Batman, Mardin, Siirt, Şırnak`ta DSİ olarak inşa ettikleri su depolama tesisleri sayesinde söz konusu olumsuz durumun minimize edildiğini vurgulayan Aslan, kuraklığa rağmen projeli alanlardaki sulama ihtiyacını karşıladıklarını, herhangi bir sorunla karşılaşmadıklarını anlattı.",
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
