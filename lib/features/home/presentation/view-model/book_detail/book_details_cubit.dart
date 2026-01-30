import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/book_repo_imp.dart';

part 'book_details_state.dart';

class BookDetailsCubit extends Cubit<BookDetailsState> {
  BookDetailsCubit(this.bookRepoImp) : super(BookDetailsInitial());

   final BookRepoImp bookRepoImp;
  Future<void> fetchNewestBooks(String category) async {
    emit(BookDetailsloading());
    var result = await bookRepoImp.fetchBooNewestksByCategory(category: category);
    result.fold(
      (failure) => emit(BookDetailsfailuer( erorrmessage: failure.errmessage!)),
      (books) => emit(BookDetailssucsess(books)),
    );
  }
}
