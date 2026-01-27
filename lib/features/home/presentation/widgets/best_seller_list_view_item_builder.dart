import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/view-model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/best_seller_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewItemBuilder extends StatelessWidget {
  const BestSellerListViewItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: BookListViewItem(book: state.books[index]),
                );
              },
            ),
          );
        } else if (state is NewestBooksError) {
          return SliverToBoxAdapter(child: Center(child: Text(state.errorMessage)));
        } else {
          return SliverToBoxAdapter(
            child: const SizedBox(
              height: 200,
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }
      },
    );
  }
}
