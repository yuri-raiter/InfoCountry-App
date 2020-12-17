import 'package:appFlutter/controller/controller.dart' as controller;
import 'package:flutter/material.dart';

class ContinentListTile extends StatelessWidget {
  final String _continentName;

  ContinentListTile(this._continentName);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          _continentName,
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        tileColor: Color(0xFF181b3a),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        ),
        onTap: () => {
          controller.currentContinent = _continentName,
          Navigator.pushNamed(context, '/continentCountries')
        },
      ),
    );
  }
}
