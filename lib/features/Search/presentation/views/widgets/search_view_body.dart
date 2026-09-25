import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Search/presentation/views/widgets/custom_search_view_item.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              enabledBorder: InputborderShape(),
              focusedBorder: InputborderShape(),
              hintText: 'Search',
              suffixIcon: Icon(Icons.search_outlined),
            ),
          ),
          const SizedBox(height: 16),
          const Text('Search Result', style: Styles.textStyle16),
          const SizedBox(height: 16),
          Expanded(child: CustomSearchListView()),
        ],
      ),
    );
  }

  OutlineInputBorder InputborderShape() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
