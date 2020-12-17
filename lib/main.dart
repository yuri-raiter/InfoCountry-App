import 'package:appFlutter/screens/AllCountries/AllCountries.dart';
import 'package:appFlutter/screens/ContinentCountries/ContinentCountries.dart';
import 'package:appFlutter/screens/Continents/Continents.dart';
import 'package:appFlutter/screens/Home/Home.dart';
import 'package:appFlutter/screens/Info/Info.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF090d28),
        accentColor: Color(0xFF20bb95),
        scaffoldBackgroundColor: Color(0xFF090d28),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/info': (context) => Info(),
        '/countries': (context) => AllCountries(),
        '/continents': (context) => Continents(),
        '/continentCountries': (context) => ContinentCountries(),
      },
    );
  }
}
