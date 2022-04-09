import 'package:flutter/material.dart';

class Barajlar {
  static final String Count = "count";
  static final String Tarih = "Tarih";
  static final String Havza = "Havza";
  static const String Barage = "Baraj";
  static final String Doluluk_orani = "Doluluk";

  static List<String> getFields() => [Count, Tarih, Havza, Barage];
}

class Baraj {
  final int? Count;
  final String Tarih;
  final String Havza;
  final String Barage;
  final String Doluluk_orani;

  const Baraj({
    required this.Count,
    required this.Tarih,
    required this.Havza,
    required this.Barage,
    required this.Doluluk_orani,
  });

  Baraj copy({
    int? Count,
    String? Tarih,
    String? Havza,
    String? Barage,
    String? Doluluk_orani,
  }) =>
      Baraj(
        Count: Count ?? this.Count,
        Tarih: Tarih ?? this.Tarih,
        Havza: Havza ?? this.Havza,
        Barage: Barage ?? this.Barage,
        Doluluk_orani: Doluluk_orani ?? this.Doluluk_orani,
      );

  static Baraj fromJson(Map<String, dynamic> json) => Baraj(
        Count: json[Barajlar.Count],
        Tarih: json[Barajlar.Tarih],
        Havza: json[Barajlar.Havza],
        Barage: json[Barajlar.Barage],
        Doluluk_orani: json[Barajlar.Doluluk_orani],
      );
  Map<String, dynamic> toJson() => {
        Barajlar.Count: Count,
        Barajlar.Tarih: Tarih,
        Barajlar.Havza: Havza,
        Barajlar.Barage: Barage,
        Barajlar.Doluluk_orani: Doluluk_orani,
      };
}

//Sıray Tarım 
//Github; @siraytarim