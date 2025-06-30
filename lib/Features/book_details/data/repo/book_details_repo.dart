import '../../../../Core/apis/api_result.dart';
import '../../../../Core/models/book_model/book_model.dart';

abstract class BookDetailsRepo {
  Future<ApiResult<List<BookModel>>> fetchMoreBooks();
}
