import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewTopBody extends StatelessWidget {
  const HomeViewTopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Image.asset(Assets.logo, scale: 3),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
    );
  }
}
