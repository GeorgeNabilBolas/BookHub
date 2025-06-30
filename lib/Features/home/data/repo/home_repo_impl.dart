import '../../../../Core/Constants/app_strings.dart';
import '../../../../Core/apis/api_result.dart';
import '../../../../Core/apis/api_service.dart';
import '../../../../Core/errors/handle_network_exptions.dart';
import '../../../../Core/errors/network_exptions.dart';
import '../../../../Core/models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  HomeRepoImpl(this._apiService);

  final ApiService _apiService;
  @override
  Future<ApiResult<List<BookModel>>> fetchMainBooks() async {
    List<BookModel> listOfBooks = [];
    try {
      final data =
          await _apiService.get(
                endPoint: 'volumes',
                queryParameters: {'q': 'all'},
              )
              as Map<String, dynamic>;
      listOfBooks = (data['items'] as List).map((e) => BookModel.fromJson(e)).toList();
      return ApiSuccess(listOfBooks);
    } catch (e) {
      return ApiFailure(HandleNetworkExceptions.getExceptionType(e));
    }
  }

  @override
  Future<ApiResult<List<BookModel>>> fetchBestSellerBooks() async {
    List<BookModel> listOfBooks = [];
    try {
      final data =
          await _apiService.get(
                endPoint: 'volumes',
                queryParameters: {'q': AppStrings.programming},
              )
              as Map<String, dynamic>;
      listOfBooks = (data['items'] as List).map((e) => BookModel.fromJson(e)).toList();
      return ApiSuccess(listOfBooks);
    } catch (e) {
      return ApiFailure(HandleNetworkExceptions.getExceptionType(e));
    }
  }
}
