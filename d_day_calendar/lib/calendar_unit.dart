import 'package:flutter/material.dart';

class CalendarUnit extends StatelessWidget {
  int _index;

  CalendarUnit(this._index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5
          )
        ]
      ),
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      height: 150,
    );
  }
}