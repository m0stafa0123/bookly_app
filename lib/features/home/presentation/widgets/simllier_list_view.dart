import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/view-model/book_detail/book_details_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/future_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimllierListView extends StatelessWidget {
  const SimllierListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailsCubit, BookDetailsState>(
      builder: (context, state) {
        if (state is BookDetailssucsess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FeatureListViewItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                ),
              ),
            ),
          );
        } else if (state is BookDetailsfailuer) {
          return Center(child: Text(state.erorrmessage));
        } else {
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
