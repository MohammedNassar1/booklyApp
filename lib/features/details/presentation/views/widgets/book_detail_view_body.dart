import 'package:bookly_app/constents.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/custom_book_action.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: customBookImage(),
                ),
                const SizedBox(height: 45),
                Text(
                  'The Jungle Book',
                  style: Styles.textStyle30.copyWith(fontFamily: kSecondFont),
                ),
                const SizedBox(height: 5),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [BookRating()],
                ),
                const SizedBox(height: 38),
                CustomBookAction(),
                Expanded(child: SizedBox(height: 50)),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SimilarBooksListview(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

