import 'package:bookly/core/utils/custom_buttom.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_image_book.dart';
import 'package:bookly/features/home/presentation/views/widget/rating_itme.dart';
import 'package:flutter/material.dart';

class BodyDetailsView extends StatelessWidget {
  const BodyDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.22,
          ),
          child: CustomImageBook(imgurl: ''),
        ),
        const SizedBox(height: 40),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal),
        ),
        const SizedBox(height: 13),
        const Opacity(
          opacity: 0.7,
          child: Text('Rudyard Kipling', style: Styles.textStyle18),
        ),
        const SizedBox(height: 20),
        const RatingItme(),
        const SizedBox(height: 40),
        const Row(
          children: [
            Expanded(
              child: CustomButtom(
                backgroundColor: Colors.white,
                text: '19.99€',
                textColor: Colors.black,
                radius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: CustomButtom(
                backgroundColor: Color(0xffEF8262),
                text: 'Free Preview',
                textColor: Colors.white,
                radius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
