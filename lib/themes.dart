import 'package:flutter/material.dart';

extension ThemeDataEx on ThemeData {
  Color get centerCardColor {
    bool dark = this.brightness == Brightness.dark;
    return dark ? Colors.white10 : Colors.grey.withOpacity(.3);
  }
}

final theme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0.0,
    ),
    // highlightColor: Colors.black,
    focusColor: Colors.black,
    backgroundColor: Color.fromRGBO(230, 230, 230, 1),
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    accentColor: Colors.black,
    textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)));

final darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0.0,
  ),
  hintColor: Color(0xff425362),
  focusColor: Colors.white,
  backgroundColor: Color.fromRGBO(30, 30, 30, 1),
  brightness: Brightness.dark,
  accentColor: Colors.white,
);
