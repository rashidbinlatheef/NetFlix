import 'package:flutter/material.dart';
import 'package:netflix/core/UI/circle_profile_avatar.dart';
import 'package:netflix/core/UI/spacing_widget.dart';

import 'video_list_tile_menu_item.dart';

class VideoListTileMenu extends StatelessWidget {
  const VideoListTileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const CircleProfileAvatar(
          name: "LUDO",
          url:
              "https://m.media-amazon.com/images/M/MV5BMDdmYjc3Y2EtM2FjYS00NGI2LTliZjgtYmQxMzJiMmUxNmI4XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
        ),
        ..._createVideoMenuItems(),
      ],
    );
  }

  List<Widget> _createVideoMenuItems() {
    final menuItems = {
      'LOL': Icons.emoji_emotions,
      'My List': Icons.add,
      'Share': Icons.share,
      'Play': Icons.play_arrow,
    };

    return menuItems.entries.map(
      (e) {
        return Column(
          children: [
            SizedBox(
              height: Spacing.large,
            ),
            VideoListTileMenuItem(
              title: e.key,
              iconData: e.value,
            ),
          ],
        );
      },
    ).toList();
  }
}
