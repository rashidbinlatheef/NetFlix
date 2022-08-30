import 'package:flutter/material.dart';
import 'package:netflix/core/design_system/button_theme.dart';
import 'package:netflix/core/design_system/search_bar_theme.dart';

class AppTheme {
  static ThemeData light = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      appBarTheme: _lightAppBarTheme,
      bottomNavigationBarTheme: _lightBottomBarTheme,
      textTheme: _lightTextTheme,
      extensions: <ThemeExtension<dynamic>>[
        _lightSearchBarTheme,
        _lightButtonTheme,
      ]);

  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Colors.black,
    appBarTheme: _darkAppBarTheme,
    bottomNavigationBarTheme: _darkBottomBarTheme,
    textTheme: _darkTextTheme,
    extensions: <ThemeExtension<dynamic>>[
      _darkSearchBarTheme,
      _darkButtonTheme,
    ],
  );
}

/// Bottom Navigation Bar Themes
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

// App Bar Themes
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

// App Button Themes
AppButtonTheme _darkButtonTheme = AppButtonTheme(
  primary: AppButtonStyle(
    color: Colors.blue,
    style: _darkTextTheme.titleMedium?.copyWith(
      color: Colors.white,
    ),
  ),
  secondary: AppButtonStyle(
    color: Colors.white,
    style: _darkTextTheme.titleMedium?.copyWith(
      color: Colors.black,
    ),
  ),
);

AppButtonTheme _lightButtonTheme = AppButtonTheme(
  primary: AppButtonStyle(
    color: Colors.blue,
    style: _darkTextTheme.titleMedium?.copyWith(
      color: Colors.white,
    ),
  ),
  secondary: AppButtonStyle(
    color: Colors.grey,
    style: _darkTextTheme.titleMedium?.copyWith(
      color: Colors.black,
    ),
  ),
);

// SearchBar Themes
SearchBarTheme _darkSearchBarTheme = SearchBarTheme(
  primary: SearchBarStyle(
    style: _darkTextTheme.bodyMedium?.copyWith(color: Colors.red),
    backgroundColor: Colors.yellow.withOpacity(0.4),
    itemColor: Colors.red,
  ),
);

SearchBarTheme _lightSearchBarTheme = SearchBarTheme(
  primary: SearchBarStyle(
    style: _darkTextTheme.bodyMedium?.copyWith(color: Colors.red),
    backgroundColor: Colors.yellow.withOpacity(0.4),
    itemColor: Colors.red,
  ),
);
