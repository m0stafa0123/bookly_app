import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custome_erorr_widget.dart';
import 'package:flutter_application_1/features/home/presentation/view-model/feature_books_cubit/feature_books_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/future_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksError) {
          return Center(
            child: CustomeErorrWidget(errorMessage: state.errorMessage),
          );
        } else if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
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
        } else {
          return const SizedBox(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
