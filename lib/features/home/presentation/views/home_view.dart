import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_top_body.dart';
import 'package:bookly/features/home/presentation/views/widget/list_home_view_itme.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            HomeViewTopBody(),
            const SizedBox(height: 15),
            BooksSlider(),
            const SizedBox(height: 25),
            BestSeller(),
          ],
        ),
      ),
    );
  }
}

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('Best Seller', style: Styles.textStyle20)],
      ),
    );
  }
}
