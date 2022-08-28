import 'package:flutter/material.dart';
import 'package:netflix/core/UI/app_navigation_bar.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppNavigationBar(
          title: 'Downloads',
        ),
      ),
      body: Center(
        child: Text(
          'Downloads',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
