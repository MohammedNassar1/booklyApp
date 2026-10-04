import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/details/data/Repo/home_repo.dart';
import 'package:bookly_app/features/details/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failures, List<Bookmodel>>> FetchFeaturedBooksimpl() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=programming&key=AIzaSyACh7lx2HgjPU4FtdeXUQcNNh5DTtTQBdQ',
      );
      List<Bookmodel> books = [];
      for (var item in data['items']) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromjson(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
