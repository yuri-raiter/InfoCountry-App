import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget okFlatButton(BuildContext context) {
  return FlatButton(
      child: Text("OK"),
      textColor: Color(0xFF090d28),
      onPressed: () {
        Navigator.pushNamed(context, '/');
      });
}
