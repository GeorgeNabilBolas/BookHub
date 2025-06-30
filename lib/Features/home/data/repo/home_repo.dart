import '../../../../Core/apis/api_result.dart';
import '../../../../Core/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<ApiResult<List<BookModel>>> fetchMainBooks();
  Future<ApiResult<List<BookModel>>> fetchBestSellerBooks();
}
