import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../Core/Constants/app_paddings.dart';
import '../../../../../../Core/models/book_model/book_model.dart';
import '../../../../../../Core/routes/app_router.dart';
import 'custom_book_info_card.dart';

class CustomSliverBookTile extends StatelessWidget {
  const CustomSliverBookTile({
    super.key,
    required this.listOfBooks,
  });
  final List<BookModel> listOfBooks;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const Padding(padding: AppPaddings.vertical10),
      itemCount: listOfBooks.length,
      itemBuilder: (context, index) {
        final BookModel bookModel = listOfBooks[index];

        return GestureDetector(
          onTap: () => context.push(AppRouter.bookDetails, extra: bookModel),
          child: CustomBookInfoCard(bookModel: bookModel),
        );
      },
    );
  }
}
