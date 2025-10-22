import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_itme_book_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListBestSellerView extends StatelessWidget {
  const ListBestSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kdetailsView);
            },
            child: const CustomItmeBookBestSeller(),
          ),
        );
      },
    );
  }
}
