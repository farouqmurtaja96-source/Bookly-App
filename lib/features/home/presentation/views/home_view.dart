import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/best_seller.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_top_body.dart';
import 'package:bookly/features/home/presentation/views/widget/list_home_view_itme.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            HomeViewTopBody(),
            SizedBox(height: 15),
            BooksSlider(),
            SizedBox(height: 25),
            Expanded(child: BestSeller()),
          ],
        ),
      ),
    );
  }
}
