import 'package:bookly/features/home/presentation/views/widget/custom_image_book.dart';
import 'package:flutter/material.dart';

class RecommendList extends StatelessWidget {
  const RecommendList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: CustomImageBook(),
        );
      },
    );
  }
}
