import 'package:flutter/material.dart';
import 'widgets/video_list_tile.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          20,
          (index) {
            return const VideoListTile();
          },
        ),
      )),
    );
  }
}
