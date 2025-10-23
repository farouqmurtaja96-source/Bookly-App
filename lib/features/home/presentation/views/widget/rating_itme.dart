import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingItme extends StatelessWidget {
  const RatingItme({super.key, required this.rating, required this.counting});
  final num rating;
  final int counting;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SizedBox(width: 5),
        Text(rating.toString(), style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '($counting)',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
