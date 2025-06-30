import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../../../Core/apis/api_service.dart';
import '../../data/repo/home_repo_impl.dart';
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
                FetchMainBooksCubit(HomeRepoImpl(ApiService(Dio())))..fetchMainBooks(),
          ),
          BlocProvider(
            create: (context) =>
                FetchBestSellerBooksCubit(HomeRepoImpl(ApiService(Dio())))..fetchBestSellerBooks(),
          ),
        ],
        child: const HomeViewBody(),
      ),
    );
  }
}
