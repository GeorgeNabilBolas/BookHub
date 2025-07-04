import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Constants/app_paddings.dart';
import '../../../../Core/di/service_locator.dart';
import '../../../../Core/models/book_model/book_model.dart';
import '../../../../Core/utils/size_config.dart';
import '../../data/repo/book_details_repo.dart';
import 'widgets/book_details_view_body.dart';
import '../cubit/FetchMoreBooks/fetch_more_books_cubit.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    AppSizeConfig().init(context);
    return BlocProvider(
      create: (context) =>
          FetchMoreBooksCubit(getIt<BookDetailsRepo>())
            ..fetchMoreBooks(bookModel.volumeInfo?.title ?? 'all'),
      child: Scaffold(
        body: Padding(
          padding: AppPaddings.horizontal30,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: BookDetailsViewBody(bookModel: bookModel),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
