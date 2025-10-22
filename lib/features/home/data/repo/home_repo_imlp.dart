import 'package:bookly/core/error/failures.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiServices.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science',
      );
      List<BookModel> books = [];
      for (var itme in data['items']) {
        books.add(BookModel.fromJson(itme));
      }

      return Right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }
}
