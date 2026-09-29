part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String failureMessage;

  FeaturedBooksFailure({required this.failureMessage});
}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final dynamic successMessage;

  FeaturedBooksSuccess({required this.successMessage});
}
