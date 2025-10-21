import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/app_bar_details_view.dart';
import 'package:bookly/features/home/presentation/views/widget/body_details_view.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_image_book.dart';
import 'package:bookly/features/home/presentation/views/widget/recommend_List.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              AppBarDetailsView(),
              SizedBox(height: 15),
              BodyDetailsView(),
              SizedBox(height: 45),
              Text('You can also like', style: Styles.textStyle14),
              SizedBox(height: 15),
              Expanded(child: RecommendList()),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
