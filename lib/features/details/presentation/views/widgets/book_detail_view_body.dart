import 'package:bookly_app/features/details/presentation/views/widgets/lower_section_book_details.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/upper_section_book_details.dart';
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
                UpperSectionBookDetails(),
                Expanded(child: SizedBox(height: 50)),
                LowerSectionBookDetails(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
