import 'package:flutter/material.dart';

import '../../../../../../Core/Constants/app_paddings.dart';
import '../../../../../../Core/Constants/app_strings.dart';
import '../../../../../../Core/Constants/app_text_styles.dart';

class BestSellerLabel extends StatelessWidget {
  const BestSellerLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPaddings.horizontal30,
      child: Text(
        AppStrings.bestSeller,
        style: AppTextStyles.text18,
      ),
    );
  }
}
