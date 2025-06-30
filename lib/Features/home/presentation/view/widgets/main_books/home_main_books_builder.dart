import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../Core/Constants/app_paddings.dart';
import '../../../../../../Core/models/book_model/book_model.dart';
import '../../../../../../Core/models/book_model/volume_info.dart';
import '../../../../../../Core/routes/app_router.dart';
import '../../../../../../Core/utils/size_config.dart';
import '../../../../../../Core/widgets/custom_book_info/custom_book_image.dart';
import '../../../cubit/fetch_main_books/fetch_books_cubit.dart';

class MainBooksBuilder extends StatelessWidget {
  const MainBooksBuilder({
    super.key,
    required this.listOfBooks,
  });
  final List<BookModel> listOfBooks;

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
    final bookModel = listOfBooks[index];
    return GestureDetector(
      onTap: () => context.push(AppRouter.bookDetails, extra: bookModel),
      child: CustomBookImage(
        heroTag: bookModel.id,
        image:
            bookModel.volumeInfo?.imageLinks?.thumbnail ??
            'https://developers.google.com/static/maps/documentation/streetview/images/error-image-generic.png',
      ),
    );
  }

  Widget paddingSeperator(BuildContext context, int index) {
    return const Padding(padding: AppPaddings.horizontal15);
  }
}
