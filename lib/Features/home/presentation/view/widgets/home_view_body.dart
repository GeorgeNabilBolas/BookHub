import 'package:flutter/material.dart';
import 'appbar/home_appbar_builder.dart';
import 'best_seller/best_seller_label.dart';
import 'best_seller/best_seller_builder.dart';
import 'main_books/home_main_books_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        HomeAppBarBuilder(),
        SliverToBoxAdapter(child: SizedBox(height: 47)),
        SliverToBoxAdapter(child: MainBooksBuilder()),
        SliverToBoxAdapter(child: SizedBox(height: 51)),
        SliverToBoxAdapter(child: BestSellerLabel()),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        BestSellerBuilder(),
      ],
    );
  }
}
