import 'package:flutter/material.dart';

class Themes {
  static ThemeData get light => ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 14.0,
          ),
          button: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      );
}
