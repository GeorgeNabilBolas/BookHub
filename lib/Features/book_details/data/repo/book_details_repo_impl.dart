import '../../../../Core/apis/api_result.dart';
import '../../../../Core/apis/api_service.dart';
import '../../../../Core/models/book_model/book_model.dart';
import '../../../../Core/errors/handle_network_exptions.dart';
import 'book_details_repo.dart';

class BookDetailsRepoImpl implements BookDetailsRepo {
  const BookDetailsRepoImpl(this._apiService);
  final ApiService _apiService;
  @override
  Future<ApiResult<List<BookModel>>> fetchMoreBooks() async {
    List<BookModel> listOfBooks = [];
    try {
      final data =
          await _apiService.get(endPoint: 'volumes', queryParameters: {'q': 'science'})
              as Map<String, dynamic>;
      listOfBooks = (data['items'] as List).map((e) => BookModel.fromJson(e)).toList();
      return ApiSuccess(listOfBooks);
    } catch (e) {
      return ApiFailure(HandleNetworkExceptions.getExceptionType(e));
    }
  }
}
