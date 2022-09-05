import 'package:flutter/material.dart';

enum TextSize {
  headingLarge,
  heading,
  headingSmall,
  bodyLarge,
  body,
  bodySmall,
}

class TextWidget extends StatelessWidget {
  const TextWidget(
    this.text, {
    Key? key,
    required TextSize size,
    Color? color,
  })  : _size = size,
        _color = color,
        super(key: key);

  final String text;
  final TextSize _size;
  final Color? _color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _style(context),
    );
  }

  TextStyle? _style(BuildContext context) {
    final TextStyle? textStyle;
    final textTheme = Theme.of(context).textTheme;
    switch (_size) {
      case TextSize.headingLarge:
        textStyle = textTheme.titleLarge;
        break;
      case TextSize.heading:
        textStyle = textTheme.titleMedium;
        break;
      case TextSize.headingSmall:
        textStyle = textTheme.titleSmall;
        break;
      case TextSize.bodyLarge:
        textStyle = textTheme.bodyLarge;
        break;
      case TextSize.body:
        textStyle = textTheme.bodyMedium;
        break;
      case TextSize.bodySmall:
        textStyle = textTheme.bodySmall;
        break;
    }

    if (_color != null) {
      return textStyle?.copyWith(
        color: _color,
      );
    }
    return Theme.of(context).textTheme.titleMedium;
  }
}
