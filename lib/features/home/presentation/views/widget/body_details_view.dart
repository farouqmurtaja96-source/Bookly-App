import 'package:bookly/core/utils/custom_buttom.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_image_book.dart';
import 'package:bookly/features/home/presentation/views/widget/rating_itme.dart';
import 'package:flutter/material.dart';

class BodyDetailsView extends StatelessWidget {
  const BodyDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.22,
          ),
          child: CustomImageBook(
            imgurl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 40),
        Text(
          bookModel.volumeInfo.title ?? '',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 13),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(height: 20),
        RatingItme(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          counting: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
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
