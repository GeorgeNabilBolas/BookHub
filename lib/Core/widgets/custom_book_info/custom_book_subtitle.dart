import 'package:flutter/material.dart';

class CustomBookSubtitle extends StatelessWidget {
  const CustomBookSubtitle({
    super.key,
    required this.style,
    required this.subTitle,
  });
  final TextStyle style;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      style: style,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      subTitle,
    );
  }
}
