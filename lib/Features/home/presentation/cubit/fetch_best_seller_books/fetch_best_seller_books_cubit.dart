import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../Core/errors/network_exptions.dart';
import '../../../../../Core/models/book_model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'fetch_best_seller_books_state.dart';

class FetchBestSellerBooksCubit extends Cubit<FetchBestSellerBooksState> {
  FetchBestSellerBooksCubit(this._homeRepo) : super(FetchBestSellerBooksInitial());
  final HomeRepo _homeRepo;
  Future<void> fetchBestSellerBooks() async {
    emit(FetchBestSellerBooksLoading());
    final result = await _homeRepo.fetchBestSellerBooks();
    result.when(
      onSuccess: (books) => emit(FetchBestSellerBooksSuccess(books)),
      onFailure: (error) => emit(FetchBestSellerBooksFailure(error)),
    );
  }
}
