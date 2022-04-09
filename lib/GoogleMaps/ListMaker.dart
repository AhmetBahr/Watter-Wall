import 'package:flutter/material.dart';

import 'Lists.dart';

class listDo extends StatefulWidget {
  listDo({Key? key}) : super(key: key);

  @override
  State<listDo> createState() => _liste_verileri_islemeState();
}

class _liste_verileri_islemeState extends State<listDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BÖLGELER"),
      ),
      body: Column(
        children: [
          kartliste(),
          kartliste(),
          kartliste(),
          kartliste(),
          kartliste(),
          kartliste(),
          kartliste(),
        ],
      ),
    );
  }
}
