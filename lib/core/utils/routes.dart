import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service_locator.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/book_repo_imp.dart';
import 'package:flutter_application_1/features/home/presentation/view-model/book_detail/book_details_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/views/book_detail_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/search/presentation/views/search_view.dart';
import 'package:flutter_application_1/features/splash_screen/presentation/views/splaash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String kSplashView = '/';
  static const String khomeView = '/homeView';
  static const String kbookDetailsView = '/bookDetailsView';
  static const String kSearchView = '/searchView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kSplashView,
        builder: (BuildContext context, GoRouterState state) {
          return const SplaashScreen();
        },
      ),
      GoRoute(
        path: khomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kbookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => BookDetailsCubit(
              getIt.get<BookRepoImp>(),
            ),
            child: BookDetailView(bookModel: state.extra as BookModel),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
