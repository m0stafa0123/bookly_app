import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/utils/routes.dart';
import 'package:flutter_application_1/core/utils/service_locator.dart';
import 'package:flutter_application_1/features/home/data/repos/book_repo_imp.dart';
import 'package:flutter_application_1/features/home/presentation/view-model/feature_books_cubit/feature_books_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/view-model/newest_books_cubit/newest_books_cubit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBooksCubit(getIt.get<BookRepoImp>())..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<BookRepoImp>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
