import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../apis/api_service.dart';
import '../../Features/home/data/repo/home_repo.dart';
import '../../Features/home/data/repo/home_repo_impl.dart';
import '../../Features/search/data/repo/search_repo.dart';
import '../../Features/search/data/repo/search_repo_impl.dart';
import '../../Features/book_details/data/repo/book_details_repo.dart';
import '../../Features/book_details/data/repo/book_details_repo_impl.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Core
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));

  // Repositories
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt<ApiService>()));
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepoImpl(getIt<ApiService>()));
  getIt.registerLazySingleton<BookDetailsRepo>(() => BookDetailsRepoImpl(getIt<ApiService>()));
}
