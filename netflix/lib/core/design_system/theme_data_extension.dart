import 'package:flutter/material.dart';
import 'package:netflix/core/design_system/button_theme.dart';
import 'package:netflix/core/design_system/search_bar_theme.dart';

extension ThemeDataExtension on ThemeData {
  SearchBarTheme get searchBarTheme {
    return extension<SearchBarTheme>()!;
  }

  AppButtonTheme get appButtonTheme {
    return extension<AppButtonTheme>()!;
  }
}
