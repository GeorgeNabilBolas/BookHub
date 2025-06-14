import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../Core/Constants/app_paddings.dart';
import '../../../../../../Core/models/book_model.dart';
import '../../../../../../Core/routes/app_router.dart';
import 'best_seller_card.dart';

class BestSellerBuilder extends StatelessWidget {
  const BestSellerBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const Padding(padding: AppPaddings.vertical10),
      itemCount: 100,
      itemBuilder: (context, index) {
        final BookModel bookModel = BookModel(
          id: '$index for best seller',
          image: 'assets/test.png',
          subTitle: 'J.K. Rowling',
          price: 19.99,
          raiting: const Raiting(rate: 4.8, count: 2390),
          title:
              'Harry Potter and the Goblet Goblet Goblet GobletGoblet Goblet Goblet Goble t of Fire',
        );

        return GestureDetector(
          onTap: () => context.push(AppRouter.bookDetails, extra: bookModel),
          child: BestSellerCard(bookModel: bookModel),
        );
      },
    );
  }
}
