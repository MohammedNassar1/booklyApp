import 'package:bookly_app/constents.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/custom_book_action.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class UpperSectionBookDetails extends StatelessWidget {
  const UpperSectionBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [BookRating()],
        ),
        const SizedBox(height: 38),
        CustomBookAction(),
      ],
    );
  }
}