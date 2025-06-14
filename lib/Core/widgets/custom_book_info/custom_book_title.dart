import 'package:flutter/material.dart';

class CustomBookTitle extends StatelessWidget {
  const CustomBookTitle({
    super.key,
    required this.style,
    required this.title,
  });
  final TextStyle style;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      style: style,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      title,
    );
  }
}
