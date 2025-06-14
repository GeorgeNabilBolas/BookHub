import 'package:flutter/material.dart';
import '../../../../../Core/Constants/app_paddings.dart';
import '../../../../../Core/Constants/app_text_styles.dart';
import '../../../../../Core/models/book_model.dart';
import '../../../../../Core/utils/size_config.dart';
import '../../../../../Core/widgets/custom_book_info_widgets.dart';
import 'appbar/book_details_appbar.dart';
import 'book_details_price_builder.dart';
import 'more_books/more_books_builder.dart';
import 'more_books/more_books_label.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const BookDetailsAppBar(),
        SizedBox(
          width: AppSizeConfig.blockSizeHorizontal * 50,
          child: CustomBookImage(image: bookModel.image, heroTag: bookModel.id),
        ),
        CustomBookTitle(style: AppTextStyles.text30, title: bookModel.title),
        CustomBookSubtitle(
          style: AppTextStyles.text18.copyWith(fontWeight: FontWeight.w400),
          subTitle: bookModel.subTitle,
        ),
        CustomBookRating(raiting: bookModel.raiting),
        BookDetailsPriceBuilder(price: bookModel.price),
        const MoreBooksLabel(),
        MoreBooksBuilder(image: bookModel.image),
      ],
    );
  }
}
