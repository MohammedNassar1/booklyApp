import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              CustomListView(),

              Padding(
                padding: EdgeInsets.only(left: 30, top: 50),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
