import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  final String _dataName;
  final String _dataValue;

  TextRow(this._dataName, this._dataValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text(_dataName,
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            ],
          ),
          Column(
            children: [
              Text(_dataValue,
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            ],
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        //color: Color(0xFF252a4a),
        border:
            Border(bottom: BorderSide(color: Color(0xFF20bb95), width: 2.0)),
      ),
    );
  }
}
