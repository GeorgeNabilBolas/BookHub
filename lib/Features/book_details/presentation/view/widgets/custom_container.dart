import 'package:flutter/material.dart';

import '../../../../../Core/Constants/app_text_styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.data,
    required this.decoration,
    required this.dataColor,
  });

  final String data;
  final Color dataColor;
  final Decoration decoration;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      height: 48,
      child: Center(
        child: Text(
          style: AppTextStyles.text15.copyWith(color: dataColor),
          data,
        ),
      ),
    );
  }
}
