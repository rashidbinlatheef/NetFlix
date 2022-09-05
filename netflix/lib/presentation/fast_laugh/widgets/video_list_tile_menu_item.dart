import 'package:flutter/material.dart';
import 'package:netflix/core/UI/spacing_widget.dart';

import 'package:netflix/core/UI/text_widget.dart';

class VideoListTileMenuItem extends StatelessWidget {
  const VideoListTileMenuItem({
    Key? key,
    required this.title,
    required this.iconData,
  }) : super(key: key);

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
        ),
        SizedBox(
          height: Spacing.extraSmall,
        ),
        TextWidget(
          title,
          size: TextSize.bodySmall,
        ),
      ],
    );
  }
}
