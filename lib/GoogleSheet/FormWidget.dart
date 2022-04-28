import 'package:flutter/material.dart';

import '../Materyal/Baraj.dart';
import '../Materyal/ButtonWidget.dart';

class BarajFormWidget extends StatefulWidget {
  final Baraj? baraj;
  final ValueChanged<Baraj> onSavedBaraj;
  const BarajFormWidget({
    Key? key,
    this.baraj,
    required this.onSavedBaraj,
  }) : super(key: key);

  @override
  _BarajFormWidgetState createState() => _BarajFormWidgetState();
}

class _BarajFormWidgetState extends State<BarajFormWidget> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController controllerCount;
  late TextEditingController controllerTarih;
  late TextEditingController controllerHavza;
  late TextEditingController controllerBaraj;
  late TextEditingController controllerDoluluk;

  @override
  void initState() {
    super.initState();
    initBaraj();
  }

  @override
  void didUpdateWidget(covariant BarajFormWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    initBaraj();
  }

  void initBaraj() {
    final Count = widget.baraj == null ? '' : widget.baraj!.Count;
    final Tarih = widget.baraj == null ? '' : widget.baraj!.Tarih;
    final Havza = widget.baraj == null ? '' : widget.baraj!.Havza;
    final Baraj = widget.baraj == null ? '' : widget.baraj!.Barage;
    final Doluluk = widget.baraj == null ? '' : widget.baraj!.Doluluk_orani;
    setState(() {
      //controllerCount = TextEditingController(text: Count);
      controllerTarih = TextEditingController(text: Tarih);
      controllerHavza = TextEditingController(text: Havza);
      controllerBaraj = TextEditingController(text: Baraj);
      controllerDoluluk = TextEditingController(text: Doluluk);
    });
  }

  @override
  Widget build(BuildContext context) => Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildTarih(),
            const SizedBox(height: 15),
            buildHavza(),
            const SizedBox(height: 15),
            buildBaraj(),
            const SizedBox(height: 15),
            buildDoluluk(),
            const SizedBox(height: 15),
            buildSubmit(),
          ],
        ),
      );

  Widget buildTarih() => TextFormField(
        controller: controllerTarih,
        decoration: InputDecoration(
          labelText: "Tarih",
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Tarih Giriniz' : null,
      );

  Widget buildHavza() => TextFormField(
        controller: controllerHavza,
        decoration: InputDecoration(
          labelText: "Havza Adı",
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Havza Adı Giriniz' : null,
      );
  Widget buildBaraj() => TextFormField(
        controller: controllerBaraj,
        decoration: InputDecoration(
          labelText: "Baraj Adı",
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Baraj Adı Giriniz' : null,
      );

  Widget buildDoluluk() => TextFormField(
        controller: controllerDoluluk,
        decoration: InputDecoration(
          labelText: "Doluluk Oranı ",
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Tarih Giriniz' : null,
      );

  Widget buildSubmit() => ButtonWidget(
        text: "Kaydet",
        onClicked: () {
          final form = formKey.currentState!;
          final isValid = form.validate();

          if (isValid) {
            final baraj = Baraj(
              Tarih: controllerTarih.text,
              Havza: controllerHavza.text,
              Barage: controllerBaraj.text,
              Doluluk_orani: controllerDoluluk.text,
              Count: null,
            );
            widget.onSavedBaraj(baraj);
          }
        },
      );
}
//Sıray Tarım 
//Github; @siraytarim