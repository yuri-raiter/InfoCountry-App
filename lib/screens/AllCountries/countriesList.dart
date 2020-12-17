import 'package:appFlutter/controller/controller.dart' as controller;
import 'package:appFlutter/util/flag.dart';
import 'package:flutter/material.dart';

class CountriesList extends StatelessWidget {
  final List<dynamic> _countriesList;

  CountriesList(this._countriesList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var country in _countriesList)
          Card(
            child: ListTile(
              leading: Flag(country['alpha2Code'], 1),
              title: Text(
                country['name'],
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              tileColor: Color(0xFF181b3a),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
              onTap: () => {
                controller.currentCountry = country['name'],
                Navigator.pushNamed(context, '/info')
              },
            ),
          )
      ],
    );
  }
}
