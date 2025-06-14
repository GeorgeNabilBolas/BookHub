import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/routes/app_router.dart';
import '../../cubit/splash_cubit.dart';
import '../../cubit/splash_state.dart';
import 'splash_animation_logo.dart';
import 'splash_text.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: homeNavigationListener,
      child: const Stack(
        children: [
          SplashAnimationLogo(),
          SplashText(),
        ],
      ),
    );
  }

  void homeNavigationListener(BuildContext context, SplashState state) {
    if (state is SplashTextLoaded) {
      context.go(AppRouter.home);
    }
  }
}
