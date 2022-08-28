import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      appBarTheme: _lightAppBarTheme,
      bottomNavigationBarTheme: _lightBottomBarTheme,
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.black),
      ));

  static ThemeData dark = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      backgroundColor: Colors.black,
      appBarTheme: _darkAppBarTheme,
      bottomNavigationBarTheme: _darkBottomBarTheme,
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.white),
      ));
}

BottomNavigationBarThemeData _lightBottomBarTheme =
    const BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  selectedItemColor: Colors.black,
  unselectedItemColor: Colors.grey,
  selectedIconTheme: IconThemeData(color: Colors.black),
  unselectedIconTheme: IconThemeData(color: Colors.grey),
);

BottomNavigationBarThemeData _darkBottomBarTheme =
    const BottomNavigationBarThemeData(
  backgroundColor: Colors.black,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.grey,
  selectedIconTheme: IconThemeData(color: Colors.white),
  unselectedIconTheme: IconThemeData(color: Colors.grey),
);

AppBarTheme _darkAppBarTheme = const AppBarTheme(
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
);

AppBarTheme _lightAppBarTheme = const AppBarTheme(
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
);
