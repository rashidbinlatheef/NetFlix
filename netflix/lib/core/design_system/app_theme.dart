import 'package:flutter/material.dart';
import 'package:netflix/core/design_system/button_theme.dart';
import 'package:netflix/core/design_system/colors.dart';
import 'package:netflix/core/design_system/search_bar_theme.dart';

class AppTheme {
  static ThemeData light = ThemeData(
      scaffoldBackgroundColor: _lightColors.backgroundPrimary,
      backgroundColor: _lightColors.backgroundPrimary,
      appBarTheme: _lightAppBarTheme,
      bottomNavigationBarTheme: _lightBottomBarTheme,
      textTheme: _lightTextTheme,
      extensions: <ThemeExtension<dynamic>>[
        _lightSearchBarTheme,
        _lightButtonTheme,
      ]);

  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: _darkColors.backgroundPrimary,
    backgroundColor: _darkColors.backgroundPrimary,
    appBarTheme: _darkAppBarTheme,
    bottomNavigationBarTheme: _darkBottomBarTheme,
    textTheme: _darkTextTheme,
    extensions: <ThemeExtension<dynamic>>[
      _darkSearchBarTheme,
      _darkButtonTheme,
    ],
  );
}

// App Colors
final AppColors _lightColors = AppColors.light;
final AppColors _darkColors = AppColors.dark;

/// Bottom Navigation Bar Themes
BottomNavigationBarThemeData _lightBottomBarTheme =
    BottomNavigationBarThemeData(
  backgroundColor: _lightColors.backgroundPrimary,
  selectedItemColor: _lightColors.contentPrimary,
  unselectedItemColor: _lightColors.contentPrimaryLight,
  selectedIconTheme: IconThemeData(color: _lightColors.contentPrimary),
  unselectedIconTheme: IconThemeData(color: _lightColors.contentPrimaryLight),
);

BottomNavigationBarThemeData _darkBottomBarTheme = BottomNavigationBarThemeData(
  backgroundColor: _darkColors.backgroundPrimary,
  selectedItemColor: _darkColors.contentPrimary,
  unselectedItemColor: _darkColors.contentPrimaryLight,
  selectedIconTheme: IconThemeData(color: _darkColors.contentPrimary),
  unselectedIconTheme: IconThemeData(color: _darkColors.contentPrimaryLight),
);

// App Bar Themes
AppBarTheme _darkAppBarTheme = AppBarTheme(
  iconTheme: IconThemeData(
    color: _darkColors.contentPrimary,
  ),
);

AppBarTheme _lightAppBarTheme = AppBarTheme(
  iconTheme: IconThemeData(
    color: _lightColors.contentPrimary,
  ),
);

// Text Themes
TextTheme _darkTextTheme = TextTheme(
  titleLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: _darkColors.contentPrimary,
  ),
  titleMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: _darkColors.contentPrimary,
  ),
  bodyMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: _darkColors.contentPrimary,
  ),
);

TextTheme _lightTextTheme = TextTheme(
  titleLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: _lightColors.contentPrimary,
  ),
  titleMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: _lightColors.contentPrimary,
  ),
  bodyMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: _lightColors.contentPrimary,
  ),
);

// App Button Themes
AppButtonTheme _darkButtonTheme = AppButtonTheme(
  primary: AppButtonStyle(
    color: _darkColors.backgroundAccent,
    style: _darkTextTheme.titleMedium?.copyWith(
      color: _darkColors.contentPrimary,
    ),
  ),
  secondary: AppButtonStyle(
    color: _darkColors.backgroundInversePrimary,
    style: _darkTextTheme.titleMedium?.copyWith(
      color: _darkColors.contentInversePrimary,
    ),
  ),
);

AppButtonTheme _lightButtonTheme = AppButtonTheme(
  primary: AppButtonStyle(
    color: _lightColors.backgroundAccent,
    style: _lightTextTheme.titleMedium?.copyWith(
      color: _lightColors.contentPrimary,
    ),
  ),
  secondary: AppButtonStyle(
    color: _lightColors.backgroundInversePrimary,
    style: _darkTextTheme.titleMedium?.copyWith(
      color: _lightColors.contentInversePrimary,
    ),
  ),
);

// SearchBar Themes
SearchBarTheme _darkSearchBarTheme = SearchBarTheme(
  primary: SearchBarStyle(
    style: _darkTextTheme.bodyMedium?.copyWith(
      color: _darkColors.contentPrimaryLight,
    ),
    backgroundColor: _darkColors.backgroundSecondary.withOpacity(0.4),
    itemColor: _darkColors.contentPrimaryLight,
  ),
);

SearchBarTheme _lightSearchBarTheme = SearchBarTheme(
  primary: SearchBarStyle(
    style: _darkTextTheme.bodyMedium?.copyWith(
      color: _lightColors.contentPrimaryLight,
    ),
    backgroundColor: _lightColors.backgroundSecondary.withOpacity(0.4),
    itemColor: _lightColors.contentPrimaryLight,
  ),
);
