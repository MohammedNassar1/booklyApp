import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/details/data/Repo/home_repo.dart';
import 'package:bookly_app/features/details/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl  implements HomeRepo{
  @override
  Future<Either<Failures, List<Bookmodel>>> fetchBestSellerBook() {
    // TODO: implement fetchBestSellerBook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<Bookmodel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}