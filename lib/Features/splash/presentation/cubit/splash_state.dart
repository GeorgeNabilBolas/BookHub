sealed class SplashState {
  SplashState({required this.textOpacity});

  final double textOpacity;
}

class SplashInitial extends SplashState {
  SplashInitial({required super.textOpacity});
}

class SplashIconLoaded extends SplashState {
  SplashIconLoaded({required super.textOpacity});
}

class SplashTextLoaded extends SplashState {
  SplashTextLoaded({required super.textOpacity});
}
