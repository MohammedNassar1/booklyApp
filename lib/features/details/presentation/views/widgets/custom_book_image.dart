import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class customBookImage extends StatelessWidget {
  const customBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage(AssetsImage.testImage1)),
        ),
      ),
    );
  }
}
