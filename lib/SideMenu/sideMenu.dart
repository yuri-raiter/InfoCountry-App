import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'InfoCountry App',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF090d28),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Color(0xFF090d28),
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Color(0xFF090d28), fontSize: 16.0),
            ),
            onTap: () => {
              Navigator.pushNamed(context, '/'),
            },
          ),
          ListTile(
            leading: Icon(
              Icons.tour,
              color: Color(0xFF090d28),
            ),
            title: Text(
              'All Countries',
              style: TextStyle(color: Color(0xFF090d28), fontSize: 16.0),
            ),
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/countries')
            },
          ),
          ListTile(
            leading: Icon(
              Icons.terrain,
              color: Color(0xFF090d28),
            ),
            title: Text(
              'Continents',
              style: TextStyle(color: Color(0xFF090d28), fontSize: 16.0),
            ),
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/continents')
            },
          ),
        ],
      ),
    );
  }
}
