import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/errors/failure.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';

abstract class BookRepo {
 Future<Either<Failure, List<BookModel>>> fetchBooksFeauture();
 Future<Either<Failure, List<BookModel>>> fetchBooksBestSeller();
}