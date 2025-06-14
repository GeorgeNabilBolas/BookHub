import 'package:flutter/material.dart';

import '../../Constants/app_text_styles.dart';
import '../../models/book_model.dart';

class CustomBookRating extends StatelessWidget {
  const CustomBookRating({
    super.key,
    required this.raiting,
  });
  final Raiting raiting;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 6,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Color(0xffFFDD4F),
          size: 20,
        ),
        Text(raiting.rate.toString(), style: AppTextStyles.text16),
        Text('(${raiting.count.toString()})', style: AppTextStyles.text14),
      ],
    );
  }
}
