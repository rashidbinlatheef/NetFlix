import 'package:flutter/material.dart';
import 'dart:math';

class DownloadsImageTile extends StatelessWidget {
  const DownloadsImageTile({
    Key? key,
    required String imageUrl,
    double angle = 0,
    required Size size,
    EdgeInsets margin = EdgeInsets.zero,
  })  : _imageUrl = imageUrl,
        _angle = angle,
        _margin = margin,
        _size = size,
        super(key: key);

  final String _imageUrl;
  final double _angle;
  final EdgeInsets _margin;
  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _margin,
      child: Transform.rotate(
        angle: _angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            width: _size.width,
            height: _size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  _imageUrl,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
