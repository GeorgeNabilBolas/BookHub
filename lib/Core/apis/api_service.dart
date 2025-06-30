import 'package:dio/dio.dart';

import '../Constants/app_durations.dart';

class ApiService {
  ApiService(this._dio) {
    setDioTimeOutDuration();
  }

  void setDioTimeOutDuration() {
    _dio.options
      ..connectTimeout = AppDurations.timeoutDuration
      ..sendTimeout = AppDurations.timeoutDuration
      ..receiveTimeout = AppDurations.timeoutDuration;
  }

  final Dio _dio;
  static const String _baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<dynamic> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    final Response response = await _dio.get(
      '$_baseUrl$endPoint',
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
