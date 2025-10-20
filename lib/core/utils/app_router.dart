import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_views.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final kHomeView = '/homeview';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashViews()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
    ],
  );
}
