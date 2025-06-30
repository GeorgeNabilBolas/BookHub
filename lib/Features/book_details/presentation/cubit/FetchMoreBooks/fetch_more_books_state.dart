part of 'fetch_more_books_cubit.dart';

@immutable
sealed class FetchMoreBooksState {}

final class FetchMoreBooksInitial extends FetchMoreBooksState {}

final class FetchMoreBooksLoading extends FetchMoreBooksState {}

final class FetchMoreBooksSuccess extends FetchMoreBooksState {
  FetchMoreBooksSuccess(this.books);
  final List<BookModel> books;
}

final class FetchMoreBooksFailure extends FetchMoreBooksState {
  FetchMoreBooksFailure(this.exception);
  final NetworkExceptions exception;
}
