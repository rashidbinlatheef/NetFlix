import 'package:flutter/material.dart';
import 'package:netflix/core/UI/spacing_widget.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    Color? iconColor = AppBarTheme.of(context).iconTheme?.color;
    TextStyle? titleTextStyle = Theme.of(context).textTheme.titleLarge;
    return Row(
      children: [
        SizedBox(width: Spacing.extraSmall),
        Text(
          title,
          style: titleTextStyle,
        ),
        const Spacer(),
        Icon(
          Icons.cast,
          color: iconColor,
        ),
        SizedBox(width: Spacing.small),
        Icon(
          Icons.home,
          color: iconColor,
        ),
        SizedBox(width: Spacing.extraSmall),
      ],
    );
  }
}
