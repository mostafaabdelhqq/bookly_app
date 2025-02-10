import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/action_book.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/book_details_image.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDatailsViewBody extends StatelessWidget {
  const BookDatailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: const BookDetailsImage(),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 5,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle20.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ActionBook(),
            const SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SimilarBooksListView()
          ],
        ),
      ),
    );
  }
}
