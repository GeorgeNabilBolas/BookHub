import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/widgets/custom_sliver_book_tile.dart';
import '../../cubit/fetch_best_seller_books/fetch_best_seller_books_cubit.dart';
import '../../cubit/fetch_main_books/fetch_books_cubit.dart';
import 'appbar/home_appbar_builder.dart';
import 'best_seller/best_seller_label.dart';
import 'main_books/home_main_books_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBestSellerBooksCubit, FetchBestSellerBooksState>(
      builder: (context, bestSellerState) {
        return BlocBuilder<FetchMainBooksCubit, FetchMainBooksState>(
          builder: (context, mainBooksState) {
            if (mainBooksState is FetchMainBooksLoading ||
                bestSellerState is FetchBestSellerBooksLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (mainBooksState is FetchMainBooksFailure ||
                bestSellerState is FetchBestSellerBooksFailure) {
              return Center(
                child: Text((mainBooksState as FetchMainBooksFailure).exception.message),
              );
            } else {
              return CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  const HomeAppBarBuilder(),
                  const SliverToBoxAdapter(child: SizedBox(height: 47)),
                  SliverToBoxAdapter(
                    child: MainBooksBuilder(
                      listOfBooks: (mainBooksState as FetchMainBooksSuccess).books,
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 51)),
                  const SliverToBoxAdapter(child: BestSellerLabel()),
                  const SliverToBoxAdapter(child: SizedBox(height: 20)),
                  CustomSliverBookTile(
                    listOfBooks: (bestSellerState as FetchBestSellerBooksSuccess).books,
                  ),
                ],
              );
            }
          },
        );
      },
    );
  }
}
