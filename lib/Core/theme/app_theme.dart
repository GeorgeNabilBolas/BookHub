import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Constants/app_colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.light,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.light,
        ),
        backgroundColor: AppColors.light,
        surfaceTintColor: AppColors.light,
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.dark,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.dark,
        ),
        backgroundColor: AppColors.dark,
        surfaceTintColor: AppColors.dark,
      ),
    );
  }
}
