import 'package:appFlutter/util/okFlatButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void wrongNameDialog(BuildContext context, String countryName) {
  Widget okButton = okFlatButton(context);

  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: Text('Error'),
            content: Text('No countries found with the name $countryName'),
            actions: [okButton],
          ));
}

void noNameDialog(BuildContext context) {
  Widget okButton = okFlatButton(context);

  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: Text('Error'),
            content: Text('You must type a name to search for a country'),
            actions: [okButton],
          ));
}
