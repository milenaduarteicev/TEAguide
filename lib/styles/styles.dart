import 'package:flutter/material.dart';
import 'constants.dart';

class Styles {
  static TextStyle appNameStyle = TextStyle(
    fontFamily: 'Baloo2',
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static BoxDecoration googleButtonDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [kvermelho, kazul],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
    borderRadius: BorderRadius.circular(8.0),
  );

  static TextStyle googleButtonText = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
