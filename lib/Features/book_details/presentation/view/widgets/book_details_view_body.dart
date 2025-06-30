import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/Constants/app_text_styles.dart';
import '../../../../../Core/models/book_model/book_model.dart';
import '../../../../../Core/utils/size_config.dart';
import '../../../../../Core/widgets/custom_book_info_widgets.dart';
import '../../cubit/FetchMoreBooks/fetch_more_books_cubit.dart';
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
          child: CustomBookImage(
            image: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
            heroTag: bookModel.id,
          ),
        ),
        CustomBookTitle(
          style: AppTextStyles.text30,
          title: bookModel.volumeInfo?.title ?? 'Unknown',
        ),
        CustomBookSubtitle(
          style: AppTextStyles.text18.copyWith(fontWeight: FontWeight.w400),
          subTitle: bookModel.volumeInfo?.description ?? 'Unknown',
        ),
        const CustomBookRating(raiting: '4.5'),
        const BookDetailsPriceBuilder(price: 10),
        const MoreBooksLabel(),
        BlocBuilder<FetchMoreBooksCubit, FetchMoreBooksState>(
          builder: (context, state) {
            if (state is FetchMoreBooksSuccess) {
              return MoreBooksBuilder(
                books: state.books,
              );
            } else if (state is FetchMoreBooksFailure) {
              return Center(
                child: Text(state.exception.message),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ],
    );
  }
}
