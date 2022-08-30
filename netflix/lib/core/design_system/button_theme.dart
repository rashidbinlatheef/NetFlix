import 'package:flutter/material.dart';

@immutable
class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  final AppButtonStyle primary;
  final AppButtonStyle secondary;

  const AppButtonTheme({
    required this.primary,
    AppButtonStyle? secondary,
  }) : secondary = secondary ?? primary;

  @override
  AppButtonTheme copyWith({AppButtonStyle? primary}) {
    return AppButtonTheme(primary: primary ?? this.primary);
  }

  @override
  AppButtonTheme lerp(ThemeExtension<AppButtonTheme>? other, double t) {
    if (other is! AppButtonTheme) {
      return this;
    }
    return AppButtonTheme(
      primary: AppButtonStyle.lerp(primary, other.primary, t),
    );
  }
}

class AppButtonStyle {
  const AppButtonStyle({
    this.style,
    this.color,
  });

  final TextStyle? style;
  final Color? color;

  static AppButtonStyle lerp(AppButtonStyle? a, AppButtonStyle? b, double t) {
    return AppButtonStyle(
      style: TextStyle.lerp(a?.style, b?.style, t),
      color: Color.lerp(a?.color, b?.color, t),
    );
  }
}
