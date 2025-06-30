import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../Core/errors/network_exptions.dart';
import '../../../../../Core/models/book_model/book_model.dart';
import '../../../../../Core/apis/api_result.dart';
import '../../../data/repo/search_repo.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit(this._searchRepo) : super(SearchCubitInitial());
  final SearchRepo _searchRepo;

  Future<void> searchBooks(String query) async {
    emit(SearchCubitLoading());
    final result = await _searchRepo.searchBooks(query);
    result.when(
      onSuccess: (books) => emit(SearchCubitSuccess(books: books)),
      onFailure: (error) => emit(SearchCubitFailure(exception: error)),
    );
  }
}
