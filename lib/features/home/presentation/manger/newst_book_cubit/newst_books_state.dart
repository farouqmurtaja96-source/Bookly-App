part of 'newst_books_cubit.dart';

sealed class NewstBooksState extends Equatable {
  const NewstBooksState();

  @override
  List<Object> get props => [];
}

final class NewstBooksInitial extends NewstBooksState {}

final class NewstBooksLoading extends NewstBooksState {}

final class NewstBooksSuccess extends NewstBooksState {
  final List<BookModel> newstBooks;

  const NewstBooksSuccess({required this.newstBooks});
}

final class NewstBooksfauiler extends NewstBooksState {
  final String message;

  const NewstBooksfauiler({required this.message});
}
