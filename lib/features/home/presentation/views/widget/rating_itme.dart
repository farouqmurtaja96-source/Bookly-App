import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingItme extends StatelessWidget {
  const RatingItme({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SizedBox(width: 5),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text('(2390)', style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
