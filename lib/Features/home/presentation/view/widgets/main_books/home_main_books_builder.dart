import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../Core/Constants/app_paddings.dart';
import '../../../../../../Core/models/book_model.dart';
import '../../../../../../Core/routes/app_router.dart';
import '../../../../../../Core/utils/size_config.dart';
import '../../../../../../Core/widgets/custom_book_info/custom_book_image.dart';

class MainBooksBuilder extends StatelessWidget {
  const MainBooksBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppSizeConfig().init(context);
    return SizedBox(
      height: AppSizeConfig.blockSizeVertical * 27.5,
      child: ListView.separated(
        padding: AppPaddings.horizontal30,
        separatorBuilder: paddingSeperator,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: buildImageWidget,
      ),
    );
  }

  Widget buildImageWidget(BuildContext context, int index) {
    final BookModel bookModel = BookModel(
      price: 0.0,
      title: 'The Jungle Book',
      subTitle: 'Rudyard Kipling',
      image: 'assets/test.png',
      raiting: const Raiting(rate: 4.8, count: 2390),
      id: '$index for main books',
    );
    return GestureDetector(
      onTap: () => context.push(AppRouter.bookDetails, extra: bookModel),
      child: CustomBookImage(
        heroTag: bookModel.id,
        image: 'assets/test.png',
      ),
    );
  }

  Widget paddingSeperator(BuildContext context, int index) {
    return const Padding(padding: AppPaddings.horizontal15);
  }
}
