import 'package:flutter/material.dart';
import 'package:netflix/core/UI/spacing_widget.dart';

import '../../core/UI/text_labels.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header('Top Searches'),
        SizedBox(
          height: Spacing.small,
        ),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: Spacing.extraSmall,
            mainAxisSpacing: Spacing.extraSmall,
            children: List.generate(
              20,
              (index) {
                return const MovieCard(
                  url:
                      "https://m.media-amazon.com/images/M/MV5BMDdmYjc3Y2EtM2FjYS00NGI2LTliZjgtYmQxMzJiMmUxNmI4XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const double imageHeight = 65;
    return Container(
      width: screenWidth * 0.3,
      height: imageHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(url),
        ),
      ),
    );
  }
}
