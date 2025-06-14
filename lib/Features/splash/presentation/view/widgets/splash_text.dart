import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Constants/constants.dart';
import '../../cubit/splash_cubit.dart';
import '../../cubit/splash_state.dart';

class SplashText extends StatelessWidget {
  const SplashText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      buildWhen: splashIconIsLoaded,
      builder: (context, state) {
        return Align(
          alignment: const Alignment(0.0, 0.9),
          child: AnimatedOpacity(
            duration: AppDurations.animateSplashText,
            opacity: state.textOpacity,
            child: const Text(
              AppStrings.appName,
              style: AppTextStyles.text24,
            ),
          ),
        );
      },
    );
  }

  bool splashIconIsLoaded(
    SplashState previous,
    SplashState current,
  ) => current is SplashIconLoaded;
}
