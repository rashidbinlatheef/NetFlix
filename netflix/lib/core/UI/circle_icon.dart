import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).backgroundColor.withOpacity(0.65),
      child: Icon(
        iconData,
      ),
    );
  }
}
