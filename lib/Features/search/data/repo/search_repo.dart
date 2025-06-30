import '../../../../Core/apis/api_result.dart';
import '../../../../Core/models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<ApiResult<List<BookModel>>> searchBooks(String query);
}
