import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
          titleTextStyle:
              TextStyle(fontSize: 28, fontWeight: FontWeight.w700)));
}
