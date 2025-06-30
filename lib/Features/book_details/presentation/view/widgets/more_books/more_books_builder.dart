import 'package:flutter/material.dart';

import '../../../../../../Core/Constants/app_paddings.dart';
import '../../../../../../Core/models/book_model/book_model.dart';
import '../../../../../../Core/widgets/custom_book_info/custom_book_image.dart';

class MoreBooksBuilder extends StatelessWidget {
  const MoreBooksBuilder({
    super.key,
    required this.books,
  });
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,
      child: ListView.separated(
        itemCount: books.length,
        separatorBuilder: (context, index) => const Padding(padding: AppPaddings.horizontal5),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CustomBookImage(image: books[index].volumeInfo?.imageLinks?.thumbnail ?? 'Unknown'),
      ),
    );
  }
}
