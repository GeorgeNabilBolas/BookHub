part of 'search_cubit_cubit.dart';

@immutable
sealed class SearchCubitState {}

final class SearchCubitInitial extends SearchCubitState {}

final class SearchCubitLoading extends SearchCubitState {}

final class SearchCubitSuccess extends SearchCubitState {
  SearchCubitSuccess({required this.books});
  final List<BookModel> books;
}

final class SearchCubitFailure extends SearchCubitState {
  SearchCubitFailure({required this.exception});
  final NetworkExceptions exception;
}
