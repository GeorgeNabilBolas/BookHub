import 'package:flutter/material.dart';
import '../../../../../../Core/Constants/app_paddings.dart';
import '../../../../../../Core/Constants/app_text_styles.dart';
import '../../../../../../Core/models/book_model.dart';
import '../../../../../../Core/widgets/custom_book_info_widgets.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontal30,
      child: SizedBox(
        height: 105,
        child: Row(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBookImage(image: bookModel.image),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomBookTitle(
                    style: AppTextStyles.text20,
                    title: bookModel.title,
                  ),
                  CustomBookSubtitle(
                    style: AppTextStyles.text14,
                    subTitle: bookModel.subTitle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomBookPrice(price: bookModel.price),
                      CustomBookRating(raiting: bookModel.raiting),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
