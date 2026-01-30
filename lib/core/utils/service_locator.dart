import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/utils/api_serivce.dart';
import 'package:flutter_application_1/features/home/data/repos/book_repo_imp.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<BookRepoImp>(BookRepoImp(getIt.get<ApiService>()));
}
