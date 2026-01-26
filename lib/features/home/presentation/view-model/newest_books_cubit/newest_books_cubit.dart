import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/book_repo_imp.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit( this.bookRepoImp) : super(NewestBooksInitial());
  final BookRepoImp bookRepoImp;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await bookRepoImp.fetchBookNewest();
    result.fold(
      (failure) => emit(NewestBooksError(failure.errmessage!)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
