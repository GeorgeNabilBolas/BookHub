import 'package:flutter/material.dart';
import '../../../../../../Core/Constants/app_paddings.dart';
import '../../../../../../Core/Constants/app_strings.dart';
import '../../../../../../Core/Constants/app_text_styles.dart';
import '../../../../../../Core/routes/app_router.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontal30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            AppStrings.appName,
            style: AppTextStyles.text24,
          ),
          IconButton(
            onPressed: () => context.push(AppRouter.search),
            icon: const Icon(Icons.search, size: 30),
          ),
        ],
      ),
    );
  }
}
