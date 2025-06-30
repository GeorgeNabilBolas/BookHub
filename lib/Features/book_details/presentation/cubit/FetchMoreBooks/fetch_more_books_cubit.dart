import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../Core/errors/network_exptions.dart';
import '../../../../../Core/models/book_model/book_model.dart';
import '../../../data/repo/book_details_repo.dart';

part 'fetch_more_books_state.dart';

class FetchMoreBooksCubit extends Cubit<FetchMoreBooksState> {
  FetchMoreBooksCubit(this._bookDetailsRepo) : super(FetchMoreBooksInitial());
  final BookDetailsRepo _bookDetailsRepo;
  Future<void> fetchMoreBooks(String query) async {
    emit(FetchMoreBooksLoading());
    final result = await _bookDetailsRepo.fetchMoreBooks(query);
    result.when(
      onSuccess: (books) => emit(FetchMoreBooksSuccess(books)),
      onFailure: (error) => emit(FetchMoreBooksFailure(error)),
    );
  }
}
