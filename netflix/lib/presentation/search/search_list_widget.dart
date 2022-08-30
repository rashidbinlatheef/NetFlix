import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/UI/spacing_widget.dart';

class SearchListWidget extends StatelessWidget {
  const SearchListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (listViewContext, index) => const SearchListItemTile(
          url:
              "https://m.media-amazon.com/images/M/MV5BMDdmYjc3Y2EtM2FjYS00NGI2LTliZjgtYmQxMzJiMmUxNmI4XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
          movieName: "Movie Name",
        ),
        separatorBuilder: (separatorContext, index) => SizedBox(
          height: Spacing.extraSmall,
        ),
        itemCount: 10,
      ),
    );
  }
}

class SearchListItemTile extends StatelessWidget {
  const SearchListItemTile({
    Key? key,
    required this.url,
    required this.movieName,
  }) : super(key: key);
  final String url;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const double imageHeight = 65;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: imageHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(url),
            ),
          ),
        ),
        SizedBox(
          width: Spacing.extraSmall,
        ),
        Text(movieName),
        const Spacer(),
        const CircleAvatar(
            radius: imageHeight / 3.5,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: (imageHeight / 3.5) - 2,
              backgroundColor: Colors.black,
              child: Icon(
                CupertinoIcons.play_fill,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}
