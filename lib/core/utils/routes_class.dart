import 'package:bookly_app/features/Search/presentation/views/search_view.dart';
import 'package:bookly_app/features/details/presentation/views/book_detail_view.dart';
import 'package:bookly_app/features/details/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash-view.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  static final searchView = '/SearchView';
  static final DetailsView = '/BookDetailView';
  static final Homeview = '/HomeView';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: Homeview, builder: (context, state) => HomeView()),
      GoRoute(path: DetailsView, builder: (context, state) => BookDetailView()),
      GoRoute(path: searchView, builder: (context, state) => SearchView()),
    ],
  );
}
