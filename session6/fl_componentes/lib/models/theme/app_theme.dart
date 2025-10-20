import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color.fromARGB(255, 197, 166, 65),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.indigo,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
  );
}
