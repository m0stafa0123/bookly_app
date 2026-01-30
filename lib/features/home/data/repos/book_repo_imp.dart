import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/errors/failure.dart';
import 'package:flutter_application_1/core/utils/api_serivce.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/book_repo.dart';

class BookRepoImp implements BookRepo {
  final ApiService apiService;

  BookRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBookNewest() async {
    try {
      var data = await apiService.get(
        endPoint:
            '/volumes?q=computerscience&filter=free-ebooks&sorting=newest',
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksFeauture() async {
    try {
      var data = await apiService.get(
        endPoint: '/volumes?q=programming&filter=free-ebooks',
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooNewestksByCategory(
   {required String category}
  ) async {
    try {
      var data = await apiService.get(
        endPoint:
            '/volumes?q=computerscience&filter=free-ebooks&sorting=relevance',
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
