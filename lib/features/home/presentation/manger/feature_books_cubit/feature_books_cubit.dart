import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureBooksLodaing());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeatureBooksFailuer(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(FeatureBooksSuccse(books: books));
      },
    );
  }
}
