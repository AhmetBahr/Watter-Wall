import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:watter_wall/AnyPage/theme_provider.dart';
import 'package:watter_wall/NewsPage/News1.dart';
import 'package:watter_wall/NewsPage/News2.dart';
import 'AnyPage/SheetOrAdd.dart';
import 'GoogleMaps/DenemeMap.dart';
import 'GoogleMaps/ListMaker.dart';
import 'GoogleMaps/Lists.dart';
import 'GoogleSheet/SheetApi.dart';
import 'GoogleSheet/SheetsPagess.dart';
import 'Pages/ListOrMaps.dart';
import 'Pages/ProfilPage.dart';
import 'Pages/MainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SheetsApi.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//     "/SheetPage": (context) => SheetsPage();
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
              title: 'Water_Wall',
              home: MainPage(),
              themeMode: themeProvider.themeMode,
              theme: Mythemes.lightTheme,
              darkTheme: Mythemes.darkTheme,
              initialRoute: "/",
              routes: {
                "/SheetsApi": (context) => SheetsPage(),
                "/Lists": (context) => kartliste(),
                "/GoogleMap": (context) => DenemeMap(),
                "/News1": (context) => News1(title: "Watter"),
                "/News2": (context) => News2(title: "Watter"),
                "/Lists": (context) => kartliste(),
                "/AddPages": (context) => AddPages(),
              });
        },
      );
} 
//Ahmet Bahar 
//Github; @AhmetBahr

//Sıray Tarım 
//Github; @siraytarim


/*theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
            shadowColor: Colors.blue.shade800,
            elevation: 8,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.grey.shade800,
            centerTitle: false,
            titleTextStyle: TextStyle(color: Colors.lightBlueAccent)),
      */
