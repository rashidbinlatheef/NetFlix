import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    appBarTheme: _lightAppBarTheme,
    bottomNavigationBarTheme: _lightBottomBarTheme,
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
      colorScheme: _buttonColorSchemeLight,
    ),
  );

  static ThemeData dark = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      backgroundColor: Colors.black,
      appBarTheme: _darkAppBarTheme,
      bottomNavigationBarTheme: _darkBottomBarTheme,
      textTheme: _darkTextTheme,
      buttonTheme: ButtonThemeData(
        colorScheme: _buttonColorSchemeDark,
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

// Text Themes
TextTheme _darkTextTheme = const TextTheme(
  titleLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  titleMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),
  bodyMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  ),
);

TextTheme _lightTextTheme = const TextTheme(
  titleLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  titleMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  ),
  bodyMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  ),
);

ColorScheme _buttonColorSchemeDark = const ColorScheme.dark(
  primary: Colors.blue,
  onPrimary: Colors.white,
  secondary: Colors.white,
  onSecondary: Colors.black,
);

ColorScheme _buttonColorSchemeLight = const ColorScheme.light(
  primary: Colors.blue,
  onPrimary: Colors.white,
  secondary: Colors.white,
  onSecondary: Colors.black,
);
