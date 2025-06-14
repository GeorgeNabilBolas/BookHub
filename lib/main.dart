import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Core/Constants/constants.dart';
import 'Core/routes/app_router.dart';
import 'Core/theme/app_theme.dart';
import 'Core/utils/bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      routerConfig: AppRouter.routers,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
    );
  }
}
