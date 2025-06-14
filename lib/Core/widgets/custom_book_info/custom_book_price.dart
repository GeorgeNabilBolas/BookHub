import 'package:flutter/material.dart';

import '../../Constants/app_text_styles.dart';

class CustomBookPrice extends StatelessWidget {
  const CustomBookPrice({
    super.key,
    required this.price,
  });
  final double price;
  @override
  Widget build(BuildContext context) {
    return Text(
      style: AppTextStyles.text15,
      '$price \$',
    );
  }
}
