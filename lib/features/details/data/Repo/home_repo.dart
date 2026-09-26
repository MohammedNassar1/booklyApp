import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/details/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<Bookmodel>>> fetchBestSellerBook();
  Future<Either<Failures, List<Bookmodel>>> fetchFeaturedBooks();
}
