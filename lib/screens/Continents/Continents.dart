import 'package:appFlutter/screens/Continents/continentListTile.dart';
import 'package:flutter/material.dart';

class Continents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('InfoCountry App'),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            children: [
              ContinentListTile('Africa'),
              ContinentListTile('Americas'),
              ContinentListTile('Asia'),
              ContinentListTile('Europe'),
              ContinentListTile('Oceania'),
            ],
          ),
        ));
  }
}
