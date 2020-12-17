import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  final String _countryCode;
  final double _scale;

  Flag(this._countryCode, this._scale);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://www.countryflags.io/$_countryCode/flat/64.png',
      scale: _scale,
    );
  }
}
