import 'package:bookly_app/features/book_details/presentation/views/widgets/book_datails_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDatailsViewBody(),
    );
  }
}
