import 'package:flutter/material.dart';
import 'package:netflix/core/UI/text_widget.dart';

class CircleProfileAvatar extends StatelessWidget {
  const CircleProfileAvatar({
    Key? key,
    required String name,
    required String url,
  })  : _name = name,
        _url = url,
        super(key: key);

  final String _name;
  final String _url;

  @override
  Widget build(BuildContext context) {
    double length = 50;
    return Container(
      width: length,
      height: length,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: length - 5,
            height: length - 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  _url,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
            ),
            child: TextWidget(
              _name,
              size: TextSize.headingLarge,
            ),
          ),
        ],
      ),
    );
  }
}
