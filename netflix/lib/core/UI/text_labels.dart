import 'package:flutter/material.dart';

abstract class TextStyleProvider {
  TextStyle? style({required BuildContext context});
}

class BaseLabel extends StatelessWidget with TextStyleProvider {
  const BaseLabel(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style(context: context),
    );
  }

  @override
  TextStyle? style({required BuildContext context}) {
    // Every sub class should implement this.
    throw UnimplementedError();
  }
}

class Header extends BaseLabel {
  const Header(
    super.text, {
    Key? key,
  }) : super(key: key);

  @override
  TextStyle? style({required BuildContext context}) {
    return Theme.of(context).textTheme.titleLarge;
  }
}

class HeaderMedium extends BaseLabel {
  const HeaderMedium(super.text, {Key? key}) : super(key: key);

  @override
  TextStyle? style({required BuildContext context}) {
    return Theme.of(context).textTheme.titleMedium;
  }
}

class BodyMedium extends BaseLabel {
  const BodyMedium(super.text, {Key? key}) : super(key: key);

  @override
  TextStyle? style({required BuildContext context}) {
    return Theme.of(context).textTheme.bodyMedium;
  }
}
