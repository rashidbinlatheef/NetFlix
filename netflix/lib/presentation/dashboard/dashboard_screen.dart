import 'package:flutter/material.dart';
import 'package:netflix/core/UI/bottom_navigation_widget.dart';
import 'package:netflix/presentation/downloads/downloads_screen.dart';
import 'package:netflix/presentation/fast_laugh/fast_laugh_screen.dart';
import 'package:netflix/presentation/home/home_screen.dart';
import 'package:netflix/presentation/new_and_hot/new_and_hot_screen.dart';
import 'package:netflix/presentation/search/search_screen.dart';
import 'package:netflix/core/notifiers/value_notifiers.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);
  final _pages = const [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughScreen(),
    SearchScreen(),
    DownloadsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: bottomNavigationIndexNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
