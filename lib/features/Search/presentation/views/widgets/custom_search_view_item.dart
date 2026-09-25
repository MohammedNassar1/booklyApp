import 'package:bookly_app/features/details/presentation/views/widgets/bestSeller_listView_item.dart';
import 'package:flutter/material.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: customListViewItem(),
        );
      },
    );
  }
}
