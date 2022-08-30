import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/design_system/theme_data_extension.dart';

import '../../core/design_system/search_bar_theme.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchBarTheme searchBarTheme = Theme.of(context).searchBarTheme;
    return Scaffold(
      body: SafeArea(
        child: CupertinoSearchTextField(
          placeholder: 'Search',
          style: searchBarTheme.primary.style,
          backgroundColor: searchBarTheme.primary.backgroundColor,
          itemColor: searchBarTheme.primary.itemColor,
        ),
      ),
    );
  }
}
