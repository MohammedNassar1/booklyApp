import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class customBookImage extends StatelessWidget {
  customBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: CachedNetworkImage(
          errorWidget: (context, url, error) => Icon(Icons.error),
          fit: BoxFit.fill,
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
