import 'package:flutter/material.dart';

import '../../../../../../Core/Constants/app_text_styles.dart';

class MoreBooksLabel extends StatelessWidget {
  const MoreBooksLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'You can also like',
        style: AppTextStyles.text14.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
