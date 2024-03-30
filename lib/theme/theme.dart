import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey.shade200,
    secondary: Colors.blue.shade200,
    onPrimary: Colors.blue,
    onSecondary: Colors.black,
  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Color(0xFFF23232d),
      primary: Color(0xFFF16171c),
      secondary: Color(0xFFFf3c573),
      onPrimary: Colors.black,
      onSecondary: Colors.white,
    )
);