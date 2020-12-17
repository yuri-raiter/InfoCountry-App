import 'package:appFlutter/SideMenu/sideMenu.dart';
import 'package:appFlutter/screens/Home/inputAndSearch.dart';
import 'package:appFlutter/screens/Home/logo.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InfoCountry App'),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Logo('assets/images/logo.png'),
                  SizedBox(height: 80.0),
                  InputAndSearch()
                ],
              ),
            ),
          )),
      drawer: SideMenu(),
    );
  }
}
