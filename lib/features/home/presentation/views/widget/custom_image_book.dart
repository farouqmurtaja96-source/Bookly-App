import 'package:flutter/material.dart';

class CustomImageBook extends StatelessWidget {
  const CustomImageBook({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset('assets/images/test_image.png', fit: BoxFit.cover),
      ),
    );
  }
}
