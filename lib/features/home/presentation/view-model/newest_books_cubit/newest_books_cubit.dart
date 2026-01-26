import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/book_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit({required this.bookRepo}) : super(NewestBooksInitial());
  final BookRepo bookRepo;
  Future<void> fetchNewestBooks() async {
    emit(FeatureBooksLoading());
    var result = await bookRepo.fetchBookNewest();
    result.fold(
      (failure) => emit(FeatureBooksError(failure.errmessage!)),
      (books) => emit(FeatureBooksSuccess(books)),
    );
  }
}
