import 'package:flutter/material.dart';

class AppColors {
  AppColors._({
    required this.backgroundPrimary,
    required this.backgroundInversePrimary,
    required this.backgroundSecondary,
    required this.backgroundAccent,
    required this.contentPrimary,
    required this.contentPrimaryLight,
    required this.contentInversePrimary,
  });

  /// primary background colors
  Color backgroundPrimary;
  Color backgroundInversePrimary;
  Color backgroundSecondary;
  Color backgroundAccent;

  /// primary content colors
  Color contentPrimary;
  Color contentPrimaryLight;
  Color contentInversePrimary;

  static AppColors light = AppColors._(
    backgroundPrimary: Colors.white,
    backgroundInversePrimary: Colors.black,
    backgroundSecondary: Colors.grey,
    backgroundAccent: Colors.blue,
    contentPrimary: Colors.black,
    contentPrimaryLight: Colors.grey,
    contentInversePrimary: Colors.white,
  );

  static AppColors dark = AppColors._(
    backgroundPrimary: Colors.black,
    backgroundInversePrimary: Colors.white,
    backgroundSecondary: Colors.grey,
    backgroundAccent: Colors.blue,
    contentPrimary: Colors.white,
    contentPrimaryLight: Colors.grey,
    contentInversePrimary: Colors.black,
  );
}
