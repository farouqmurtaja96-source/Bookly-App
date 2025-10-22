import 'package:bookly/core/error/failures.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
