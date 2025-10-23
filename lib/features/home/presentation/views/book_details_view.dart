import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widget/app_bar_details_view.dart';
import 'package:bookly/features/home/presentation/views/widget/body_details_view.dart';

import 'package:bookly/features/home/presentation/views/widget/recommend_List.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const AppBarDetailsView(),
              const SizedBox(height: 15),
              BodyDetailsView(bookModel: bookModel),
              const SizedBox(height: 45),
              const Text('You can also like', style: Styles.textStyle14),
              const SizedBox(height: 15),
              const Expanded(child: RecommendList()),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
