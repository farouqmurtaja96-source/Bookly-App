import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_image_book.dart';
import 'package:bookly/features/home/presentation/views/widget/rating_itme.dart';
import 'package:flutter/material.dart';

class CustomItmeBookBestSeller extends StatelessWidget {
  const CustomItmeBookBestSeller({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          CustomImageBook(imgurl: bookModel.volumeInfo.imageLinks!.thumbnail),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),

                Text(
                  bookModel.volumeInfo.authors![0],
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),

                Row(
                  children: [
                    Text(
                      'Free ',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    RatingItme(
                      rating: bookModel.volumeInfo.averageRating ?? 0,
                      counting: bookModel.volumeInfo.ratingsCount ?? 0,
                    ),
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
