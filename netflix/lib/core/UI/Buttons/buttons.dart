import 'package:flutter/material.dart';

enum AppButtonType { primary, secondary }

class AppButtonTheme {
  static Color? buttonColor(
      {required AppButtonType type, required BuildContext context}) {
    switch (type) {
      case AppButtonType.primary:
        return Theme.of(context).buttonTheme.colorScheme?.primary;
      case AppButtonType.secondary:
        return Theme.of(context).buttonTheme.colorScheme?.secondary;
    }
  }

  static TextStyle? textStyle(
      {required AppButtonType type, required BuildContext context}) {
    switch (type) {
      case AppButtonType.primary:
        return Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
            );
      case AppButtonType.secondary:
        return Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
            );
    }
  }
}
