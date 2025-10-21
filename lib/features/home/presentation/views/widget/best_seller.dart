import 'package:bookly/core/utils/styles.dart';

import 'package:bookly/features/home/presentation/views/widget/list_best_seller_view.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Best Seller', style: Styles.textStyle20),
          SizedBox(height: 25),
          Expanded(child: ListBestSellerView()),
        ],
      ),
    );
  }
}
