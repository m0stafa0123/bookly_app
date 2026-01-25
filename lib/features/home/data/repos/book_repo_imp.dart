import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/errors/failure.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/book_repo.dart';

class BookRepoImp implements BookRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksBestSeller() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksFeauture() {
    throw UnimplementedError();
  }
}
