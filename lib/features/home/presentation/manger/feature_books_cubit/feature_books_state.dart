part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLodaing extends FeatureBooksState {}

final class FeatureBooksSuccse extends FeatureBooksState {
  final List<BookModel> books;
  const FeatureBooksSuccse({required this.books});
}

final class FeatureBooksFailuer extends FeatureBooksState {
  final String errorMessage;

  const FeatureBooksFailuer({required this.errorMessage});
}
