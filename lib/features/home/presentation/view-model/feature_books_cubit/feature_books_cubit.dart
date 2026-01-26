import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/book_repo.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit({required this.bookRepo}) : super(FeatureBooksInitial());
  final   BookRepo bookRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await bookRepo.fetchBooksFeauture();
    result.fold(
      (failure) => emit(FeatureBooksError(failure.errmessage!)),
      (books) => emit(FeatureBooksSuccess(books)),
    );
  }
}
