import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../Core/errors/network_exptions.dart';
import '../../../../../Core/models/book_model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'fetch_books_state.dart';

class FetchMainBooksCubit extends Cubit<FetchMainBooksState> {
  FetchMainBooksCubit(this._homeRepo) : super(FetchMainBooksInitial());
  final HomeRepo _homeRepo;
  Future<void> fetchMainBooks() async {
    emit(FetchMainBooksLoading());
    final result = await _homeRepo.fetchMainBooks();
    result.when(
      onSuccess: (books) => emit(FetchMainBooksSuccess(books)),
      onFailure: (error) => emit(FetchMainBooksFailure(error)),
    );
  }
}
