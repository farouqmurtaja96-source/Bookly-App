import 'package:bookly/features/home/presentation/manger/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_image_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksSlider extends StatefulWidget {
  const BooksSlider({super.key});

  @override
  State<BooksSlider> createState() => _BooksSliderState();
}

class _BooksSliderState extends State<BooksSlider> {
  final ScrollController scrollController = ScrollController();
  double scrollPosition = 0.0;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      setState(() {
        scrollPosition = scrollController.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccse) {
          return Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  double itmeWidth = MediaQuery.of(context).size.width * 0.28;

                  double distance = (scrollPosition / itmeWidth - index).abs();
                  double scale = (1.2 - (distance * 0.2)).clamp(1, 1.2);

                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 12,
                      left: 12,
                      top: 40,
                      bottom: 15,
                    ),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      // margin: const EdgeInsets.only(left: 12, top: 40, bottom: 15),
                      child: Transform.scale(
                        scale: scale,
                        child: CustomImageBook(
                          imgurl: state
                              .books[index]
                              .volumeInfo
                              .imageLinks!
                              .thumbnail,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeatureBooksFailuer) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
