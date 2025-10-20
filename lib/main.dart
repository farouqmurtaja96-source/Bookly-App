import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/splash/presentation/views/splash_views.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashViews(),
    );
  }
}
