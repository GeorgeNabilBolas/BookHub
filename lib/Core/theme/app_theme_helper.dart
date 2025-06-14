import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class AppThemeHelper {
  static Color getLeftContainerColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ? AppColors.dark : AppColors.light;
  }

  static Color getRightContainerColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ? AppColors.blue : AppColors.orange;
  }

  static Color getLeftContainerDataColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark ? AppColors.dark : AppColors.light;
  }

  static Color getRightContainerDataColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ? AppColors.dark : AppColors.light;
  }
}
