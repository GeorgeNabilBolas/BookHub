import 'package:flutter/material.dart';
import '../../Constants/constants.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.image,
    required this.heroTag,
  });
  final String image;
  final String heroTag;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: AspectRatio(
        aspectRatio: 150 / 224,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadiusGeometry.all(AppBorderRadius.circular16),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
