import 'package:flutter/material.dart';
import 'package:netflix/core/UI/app_navigation_bar.dart';
import 'package:netflix/core/design_system/app_theme.dart';

import '../../core/UI/Buttons/Buttons.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(44),
        child: AppNavigationBar(
          title: 'Downloads',
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Icon(
                Icons.settings,
                color: AppBarTheme.of(context).iconTheme?.color,
              ),
              Text(
                'Smart Downloads',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          Center(
            child: Text(
              'Introducing Downloads for you',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Center(
            child: Text(
              "We'll download personailsed selection of movies and shows for you, so there's always something to watch on your device.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          MaterialButton(
            color: AppButtonTheme.buttonColor(
              type: AppButtonType.primary,
              context: context,
            ),
            onPressed: () {},
            child: Text(
              "Set up",
              style: AppButtonTheme.textStyle(
                type: AppButtonType.primary,
                context: context,
              ),
            ),
          ),
          MaterialButton(
            color: AppButtonTheme.buttonColor(
              type: AppButtonType.secondary,
              context: context,
            ),
            onPressed: () {},
            child: Text(
              "See what you can download",
              style: AppButtonTheme.textStyle(
                type: AppButtonType.secondary,
                context: context,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
