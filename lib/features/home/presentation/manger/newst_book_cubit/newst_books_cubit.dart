import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewstBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (failure) {
        emit(NewstBooksfauiler(message: failure.errorMessage));
      },
      (books) {
        emit(NewstBooksSuccess(newstBooks: books));
      },
    );
  }
}
