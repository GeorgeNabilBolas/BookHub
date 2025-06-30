import 'package:go_router/go_router.dart';

import '../../Features/book_details/presentation/view/book_details_view.dart';
import '../../Features/home/presentation/view/home_view.dart';
import '../../Features/search/presentation/view/search_view.dart';
import '../../Features/splash/presentation/view/splash_view.dart';
import '../models/book_model/book_model.dart';

class AppRouter {
  static const String splash = '/';
  static const String home = '/home';
  static const String bookDetails = '/bookDetails';
  static const String search = '/search';

  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetails,
        builder: (context, state) => BookDetailsView(bookModel: state.extra as BookModel),
      ),
      GoRoute(
        path: search,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );

  // Add more routes as needed
}
