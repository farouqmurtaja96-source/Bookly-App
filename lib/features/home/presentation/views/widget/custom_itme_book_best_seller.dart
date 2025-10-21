import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomItmeBookBestSeller extends StatelessWidget {
  const CustomItmeBookBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          Image.asset('assets/images/test_image.png'),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),

                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),

                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const RatingItme(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RatingItme extends StatelessWidget {
  const RatingItme({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
