import 'package:flutter/material.dart';

class AppColors {

  AppColors._({
    required this.backgroundPrimary, 
    required this.backgroundInversePrimary,
    required this.contentPrimary,
    required this.contentPrimaryLight,
    required this.contentInversePrimary,
  });

  /// primary background colors
  Color backgroundPrimary;
  Color backgroundInversePrimary;

  /// primary content colors
  Color contentPrimary;
  Color contentPrimaryLight;
  Color contentInversePrimary;

  static AppColors light = AppColors._(
    backgroundPrimary: Colors.black, 
    backgroundInversePrimary: Colors.white,
    contentPrimary: Colors.white,
    contentPrimaryLight: Colors.grey,
    contentInversePrimary: Colors.black,
  );
}