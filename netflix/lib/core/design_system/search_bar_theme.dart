import 'package:flutter/material.dart';

@immutable
class SearchBarTheme extends ThemeExtension<SearchBarTheme> {
  final SearchBarStyle primary;
  final SearchBarStyle secondary;

  const SearchBarTheme({
    required this.primary,
    SearchBarStyle? secondary,
  }) : secondary = secondary ?? primary;

  @override
  SearchBarTheme copyWith({SearchBarStyle? primary}) {
    return SearchBarTheme(primary: primary ?? this.primary);
  }

  @override
  SearchBarTheme lerp(ThemeExtension<SearchBarTheme>? other, double t) {
    if (other is! SearchBarTheme) {
      return this;
    }
    return SearchBarTheme(
      primary: SearchBarStyle.lerp(primary, other.primary, t),
    );
  }
}

class SearchBarStyle {
  const SearchBarStyle({
    this.style,
    this.backgroundColor,
    required this.itemColor,
  });

  final TextStyle? style;
  final Color? backgroundColor;
  final Color itemColor;

  static SearchBarStyle lerp(SearchBarStyle? a, SearchBarStyle? b, double t) {
    return SearchBarStyle(
      style: TextStyle.lerp(a?.style, b?.style, t),
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      itemColor: Color.lerp(a?.itemColor, b?.itemColor, t) ?? Colors.white,
    );
  }
}
