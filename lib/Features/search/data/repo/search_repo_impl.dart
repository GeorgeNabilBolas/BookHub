import '../../../../Core/errors/handle_network_exptions.dart';
import '../../../../Core/models/book_model/book_model.dart';
import '../../../../Core/apis/api_result.dart';
import '../../../../Core/apis/api_service.dart';
import 'search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl(this._apiService);
  final ApiService _apiService;
  @override
  Future<ApiResult<List<BookModel>>> searchBooks(String query) async {
    try {
      final data =
          await _apiService.get(endPoint: 'volumes', queryParameters: {'q': query})
              as Map<String, dynamic>;
      final listOfBooks = (data['items'] as List).map((e) => BookModel.fromJson(e)).toList();
      return ApiSuccess(listOfBooks);
    } catch (e) {
      return ApiFailure(HandleNetworkExceptions.getExceptionType(e));
    }
  }
}
