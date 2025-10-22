import 'package:flutter/material.dart';

class CustomImageBook extends StatelessWidget {
  const CustomImageBook({super.key, required this.imgurl});
  final String imgurl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.network(imgurl, fit: BoxFit.cover),
      ),
    );
  }
}
