part of 'fetch_books_cubit.dart';

@immutable
sealed class FetchMainBooksState {}

final class FetchMainBooksInitial extends FetchMainBooksState {}

final class FetchMainBooksLoading extends FetchMainBooksState {}

final class FetchMainBooksSuccess extends FetchMainBooksState {
  FetchMainBooksSuccess(this.books);
  final List<BookModel> books;
}

final class FetchMainBooksFailure extends FetchMainBooksState {
  FetchMainBooksFailure(this.exception);
  final NetworkExceptions exception;
}
