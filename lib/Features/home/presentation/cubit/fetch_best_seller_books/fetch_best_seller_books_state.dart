part of 'fetch_best_seller_books_cubit.dart';

@immutable
sealed class FetchBestSellerBooksState {}

final class FetchBestSellerBooksInitial extends FetchBestSellerBooksState {}

final class FetchBestSellerBooksLoading extends FetchBestSellerBooksState {}

final class FetchBestSellerBooksSuccess extends FetchBestSellerBooksState {
  FetchBestSellerBooksSuccess(this.books);
  final List<BookModel> books;
}

final class FetchBestSellerBooksFailure extends FetchBestSellerBooksState {
  FetchBestSellerBooksFailure(this.exception);
  final NetworkExceptions exception;
}
