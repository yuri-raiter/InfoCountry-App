import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String _logoPath;

  Logo(this._logoPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        _logoPath,
        height: 200.0,
      ),
    );
  }
}
