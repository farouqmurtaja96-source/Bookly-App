import 'package:bookly/features/home/presentation/views/widget/home_view_top_body.dart';
import 'package:bookly/features/home/presentation/views/widget/list_home_view_itme.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            HomeViewTopBody(),
            const SizedBox(height: 15),
            ListHomeViewItme(),
          ],
        ),
      ),
    );
  }
}
