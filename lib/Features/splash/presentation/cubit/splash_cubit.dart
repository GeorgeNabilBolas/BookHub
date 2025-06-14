import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/Constants/app_durations.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial(textOpacity: 0.0));
  void initSplash() async {
    await Future.delayed(AppDurations.delayShowSplashText);
    emit(SplashIconLoaded(textOpacity: 1.0));
    await Future.delayed(AppDurations.delaySplashNavigate);
    emit(SplashTextLoaded(textOpacity: 1.0));
  }
}
