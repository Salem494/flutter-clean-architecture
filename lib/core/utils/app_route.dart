import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architucture/core/utils/app_route_path.dart';
import 'package:flutter_clean_architucture/feature/book_details/presentation/views/book_details_view.dart';
import 'package:flutter_clean_architucture/feature/book_details/presentation/widgets/book_details_body_view.dart';
import 'package:flutter_clean_architucture/feature/home/presention/views/home_view.dart';
import 'package:flutter_clean_architucture/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../feature/search/presentition/views/search_view.dart';

class AppRoute {
  AppRoute._();

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutePath.splashView,
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        pageBuilder: (context, state) {
          return CustomBuildTransitionPage(HomeView());
        },
        path: AppRoutePath.homeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        pageBuilder: (context, state) {
          return CustomBuildTransitionPage(BookDetailsView());
        },
        path: AppRoutePath.bookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),

      GoRoute(
        path: AppRoutePath.searchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}



 // ignore: non_constant_identifier_names
  CustomTransitionPage<dynamic> CustomBuildTransitionPage( Widget child) {
    return CustomTransitionPage(
            child: child,
            transitionDuration: const Duration(seconds: 2),
            transitionsBuilder: (context, Animation<double> an,
                Animation<double> an2, child) {
              return FadeTransition(opacity: CurveTween(curve: Curves.easeInOut).animate(an),child: child);
            });
  }
