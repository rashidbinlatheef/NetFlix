import 'package:flutter/material.dart';
import 'package:netflix/core/UI/app_navigation_bar.dart';
import 'package:netflix/core/design_system/button_theme.dart';
import 'package:netflix/core/design_system/theme_data_extension.dart';
import 'package:netflix/presentation/downloads/downloads_image_tiles.dart';
import '../../core/UI/spacing_widget.dart';

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
          ..._createHeaders(context),
          SizedBox(height: 3 * Spacing.large),
          _createDownloadImageGallery(context),
          SizedBox(height: 3 * Spacing.large),
          ..._createButtons(context),
        ],
      ),
    );
  }

  List<Widget> _createHeaders(BuildContext context) {
    return [
      SizedBox(height: Spacing.medium),
      Row(
        children: [
          Icon(
            Icons.settings,
            color: AppBarTheme.of(context).iconTheme?.color,
          ),
          SizedBox(width: Spacing.extraSmall),
          Text(
            'Smart Downloads',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
      SizedBox(height: Spacing.large),
      Center(
        child: Text(
          'Introducing Downloads for you',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      SizedBox(height: Spacing.small),
      Center(
        child: Text(
          "We'll download personailsed selection of movies and shows for you, so there's always something to watch on your device.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    ];
  }

  Widget _createDownloadImageGallery(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width * 0.3;
    final double height = screenSize.width * 0.4;

    final List imageList = [
      "https://m.media-amazon.com/images/M/MV5BMDdmYjc3Y2EtM2FjYS00NGI2LTliZjgtYmQxMzJiMmUxNmI4XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
      "https://m.media-amazon.com/images/M/MV5BNmI5NTdiOGYtNzZkZC00YzNkLTg4NDgtNGFiZGEzMmMzMDUxXkEyXkFqcGdeQXVyODE2NjI1NjU@._V1_QL75_UX280_CR0,0,280,414_.jpg",
      "https://m.media-amazon.com/images/M/MV5BYzAzZDUwMDktN2I5YS00MTFlLWEwOTQtMTMxNGRhM2U2NmI4XkEyXkFqcGdeQXVyMzk0NzQ5MjU@._V1_QL75_UX280_CR0,0,280,414_.jpg",
    ];

    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: screenSize.width / 4,
          backgroundColor: Colors.blueGrey,
        ),
        DownloadsImageTile(
          imageUrl: imageList[0],
          size: Size(width, height),
          angle: 20,
          margin: const EdgeInsets.only(
            left: 150,
            top: 20,
          ),
        ),
        DownloadsImageTile(
            imageUrl: imageList[1],
            size: Size(width, height),
            angle: -20,
            margin: const EdgeInsets.only(
              right: 150,
              top: 20,
            )),
        DownloadsImageTile(
          imageUrl: imageList[2],
          size: Size(width, height),
          margin: const EdgeInsets.only(top: 0),
        ),
      ],
    );
  }

  List<Widget> _createButtons(BuildContext context) {
    AppButtonStyle primaryButtonStyle =
        Theme.of(context).appButtonTheme.primary;
    AppButtonStyle secondaryButtonStyle =
        Theme.of(context).appButtonTheme.secondary;
    return [
      MaterialButton(
        color: primaryButtonStyle.color,
        onPressed: () {},
        child: Text(
          "Set up",
          style: primaryButtonStyle.style,
        ),
      ),
      MaterialButton(
        color: secondaryButtonStyle.color,
        onPressed: () {},
        child: Text(
          "See what you can download",
          style: secondaryButtonStyle.style,
        ),
      ),
    ];
  }
}
