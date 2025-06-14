import 'package:flutter/material.dart';
import '../../../../Core/Constants/app_paddings.dart';
import '../../../../Core/models/book_model.dart';
import '../../../../Core/utils/size_config.dart';
import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    AppSizeConfig().init(context);
    return Scaffold(
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
    );
  }
}
