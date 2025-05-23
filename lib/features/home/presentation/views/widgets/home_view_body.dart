import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomAppBar(),
            ),
            BooksListView(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )),
        SliverFillRemaining(
          child: BestSellerListViewBuilder(),
        )
      ],
    );
  }
}
