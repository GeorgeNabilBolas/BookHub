import 'package:flutter/material.dart';
import '../../Constants/constants.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.image,
    this.heroTag,
  });
  final String image;
  final String? heroTag;
  @override
  Widget build(BuildContext context) {
    return heroTag == null
        ? _ImageBuilder(image: image)
        : Hero(
            tag: heroTag!,
            child: _ImageBuilder(image: image),
          );
  }
}

class _ImageBuilder extends StatelessWidget {
  const _ImageBuilder({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 150 / 224,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadiusGeometry.all(
            AppBorderRadius.circular16,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
        ),
      ),
    );
  }
}
