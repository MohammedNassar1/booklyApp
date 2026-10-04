import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/details/data/Repo/home_repo.dart';
import 'package:bookly_app/features/details/data/models/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepo}) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepo.FetchFeaturedBooksimpl();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(failureMessage: failure.errMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books: books));
      },
    );
  }
}
