import 'package:bookly/features/home/presentation/views/widget/custom_image_book.dart';
import 'package:flutter/material.dart';

class ListHomeViewItme extends StatelessWidget {
  const ListHomeViewItme({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.28,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: CustomImageBook(),
            );
          },
        ),
      ),
    );
  }
}
