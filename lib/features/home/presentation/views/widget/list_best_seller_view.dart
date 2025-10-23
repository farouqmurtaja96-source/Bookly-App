import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/presentation/manger/newst_book_cubit/newst_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_itme_book_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListBestSellerView extends StatelessWidget {
  const ListBestSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSuccess) {
          return ListView.builder(
            shrinkWrap: false,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.newstBooks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kdetailsView,
                      extra: state.newstBooks[index],
                    );
                  },
                  child: CustomItmeBookBestSeller(
                    bookModel: state.newstBooks[index],
                  ),
                ),
              );
            },
          );
        } else if (state is NewstBooksfauiler) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
