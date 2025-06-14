import 'package:flutter/material.dart';
import '../../../../../Core/Constants/app_paddings.dart';
import '../../../../../Core/Constants/app_text_styles.dart';
import '../../../../../Core/models/book_model.dart';
import '../../../../../Core/utils/size_config.dart';
import '../../../../../Core/widgets/custom_book_info_widgets.dart';
import 'appbar/book_details_appbar.dart';
import 'book_details_price_builder.dart';

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
        const SeeMoreLabel(),
        SeeMoreBuilder(image: bookModel.image),
      ],
    );
  }
}

class SeeMoreBuilder extends StatelessWidget {
  const SeeMoreBuilder({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Padding(padding: AppPaddings.horizontal5),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CustomBookImage(image: image, heroTag: 'heroTag $index'),
      ),
    );
  }
}

class SeeMoreLabel extends StatelessWidget {
  const SeeMoreLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'You can also like',
        style: AppTextStyles.text14.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
