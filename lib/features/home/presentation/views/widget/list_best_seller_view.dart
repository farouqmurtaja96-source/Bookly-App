import 'package:bookly/features/home/presentation/views/widget/custom_itme_book_best_seller.dart';
import 'package:flutter/material.dart';

class ListBestSellerView extends StatelessWidget {
  const ListBestSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: CustomItmeBookBestSeller(),
        );
      },
    );
  }
}
