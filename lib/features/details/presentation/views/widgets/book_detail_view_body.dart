import 'package:bookly_app/features/details/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: customBookImage(),
          ),
        ],
      ),
    );
  }
}
