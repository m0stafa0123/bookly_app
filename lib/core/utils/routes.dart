import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/book_detail_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/splash_screen/presentation/views/splaash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const khomeView = '/homeView';
  static const String kbookDetailsView = '/bookDetails';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplaashScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: khomeView,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            path: kbookDetailsView,
            builder: (BuildContext context, GoRouterState state) {
              return const BookDetailView();
            },
          ),
        ],
      ),
    ],
  );
}
