import 'package:flutter/material.dart';
import 'package:netflix/core/UI/circle_icon.dart';
import 'package:netflix/core/UI/spacing_widget.dart';
import 'package:netflix/presentation/fast_laugh/widgets/video_list_tile_menu.dart';

class VideoListTile extends StatelessWidget {
  const VideoListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.red,
      ),
      Padding(
        padding: EdgeInsets.only(
          bottom: Spacing.medium,
          left: Spacing.extraSmall,
          right: Spacing.extraSmall,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            CircleIcon(
              iconData: Icons.volume_mute,
            ),
            Spacer(),
            VideoListTileMenu(),
          ],
        ),
      )
    ]);
  }
}
