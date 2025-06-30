import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../Core/di/service_locator.dart';
import '../../data/repo/home_repo.dart';
import '../cubit/fetch_best_seller_books/fetch_best_seller_books_cubit.dart';
import '../cubit/fetch_main_books/fetch_books_cubit.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FetchMainBooksCubit(getIt<HomeRepo>())..fetchMainBooks(),
          ),
          BlocProvider(
            create: (context) =>
                FetchBestSellerBooksCubit(getIt<HomeRepo>())..fetchBestSellerBooks(),
          ),
        ],
        child: const HomeViewBody(),
      ),
    );
  }
}
