part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}
final class FeatureBooksLoading extends NewestBooksState {}
final class FeatureBooksError extends NewestBooksState {
  final String errorMessage;

  const FeatureBooksError(this.errorMessage);
}
final class FeatureBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const FeatureBooksSuccess(this.books);
}
