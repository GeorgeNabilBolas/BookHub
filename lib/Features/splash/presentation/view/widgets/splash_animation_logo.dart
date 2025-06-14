import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../Core/Constants/app_assets.dart';

class SplashAnimationLogo extends StatelessWidget {
  const SplashAnimationLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(repeat: false, AppAssets.appLogoAnimation),
    );
  }
}
