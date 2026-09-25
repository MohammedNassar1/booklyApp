import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class LowerSectionBookDetails extends StatelessWidget {
  const LowerSectionBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        SimilarBooksListview(),
        const SizedBox(height: 40),
      ],
    );
  }
}
