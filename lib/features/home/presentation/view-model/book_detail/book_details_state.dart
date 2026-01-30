part of 'book_details_cubit.dart';

sealed class BookDetailsState extends Equatable {
  const BookDetailsState();

  @override
  List<Object> get props => [];
}

final class BookDetailsInitial extends BookDetailsState {}

final class BookDetailsloading extends BookDetailsState {}

final class BookDetailssucsess extends BookDetailsState {
  final List<BookModel> books;

  const BookDetailssucsess(this.books);
}

final class BookDetailsfailuer extends BookDetailsState {
  final String erorrmessage;

  const BookDetailsfailuer( {required this.erorrmessage});
}
