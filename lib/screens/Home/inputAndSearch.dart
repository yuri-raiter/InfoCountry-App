import 'package:appFlutter/controller/controller.dart' as controller;
import 'package:appFlutter/util/dialogs.dart';
import 'package:flutter/material.dart';

class InputAndSearch extends StatefulWidget {
  @override
  _InputAndSearchState createState() => _InputAndSearchState();
}

class _InputAndSearchState extends State<InputAndSearch> {
  final inputedValue = TextEditingController();

  @override
  void dispose() {
    inputedValue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: inputedValue,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
            decoration: InputDecoration(
                hintText: 'Type a country name',
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF20bb95)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF20bb95)),
                )),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            child: Text('Search', style: TextStyle(fontSize: 20.0)),
            style: ElevatedButton.styleFrom(primary: Color(0xFF20bb95)),
            onPressed: () {
              if (inputedValue.text.isEmpty) {
                noNameDialog(context);
              } else {
                controller.currentCountry = inputedValue.text;
                inputedValue.clear();
                Navigator.pushNamed(context, '/info');
              }
            },
          )
        ],
      ),
    );
  }
}
