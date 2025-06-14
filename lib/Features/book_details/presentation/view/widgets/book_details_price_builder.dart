import 'package:flutter/material.dart';
import '../../../../../Core/Constants/constants.dart';
import '../../../../../Core/theme/app_theme_helper.dart';
import 'custom_container.dart';

class BookDetailsPriceBuilder extends StatelessWidget {
  const BookDetailsPriceBuilder({
    super.key,
    required this.price,
  });
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomContainer(
            dataColor: AppThemeHelper.getLeftContainerDataColor(context),
            data: price.toString(),
            decoration: getLeftContainerDecoration(context),
          ),
        ),
        Expanded(
          child: CustomContainer(
            data: 'Free preview',
            dataColor: AppThemeHelper.getRightContainerDataColor(context),
            decoration: getRightContainerDecoration(context),
          ),
        ),
      ],
    );
  }

  BoxDecoration getRightContainerDecoration(BuildContext context) {
    return BoxDecoration(
      color: AppThemeHelper.getRightContainerColor(context),
      borderRadius: const BorderRadius.only(
        topRight: AppBorderRadius.circular16,
        bottomRight: AppBorderRadius.circular16,
      ),
    );
  }

  BoxDecoration getLeftContainerDecoration(BuildContext context) {
    return BoxDecoration(
      color: AppThemeHelper.getLeftContainerColor(context),
      borderRadius: const BorderRadius.only(
        bottomLeft: AppBorderRadius.circular16,
        topLeft: AppBorderRadius.circular16,
      ),
    );
  }
}
