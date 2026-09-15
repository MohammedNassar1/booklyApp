import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bestSeller_listView_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        CustomListView(),

        Padding(
          padding: EdgeInsets.only(left: 24, top: 50),
          child: Text('Best Seller', style: Styles.textStyle18),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: BestSellerListViewItem(),
        ),
      ],
    );
  }
}
