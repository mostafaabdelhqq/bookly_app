import 'package:bookly_app/features/book_details/presentation/views/widgets/book_details_image.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDatailsViewBody extends StatelessWidget {
  const BookDatailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .21),
            child: const BookDetailsImage(),
          ),
        ],
      ),
    );
  }
}
