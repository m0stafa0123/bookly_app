import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/best_seller_list_view_item.dart';

class SearchListViewItem extends StatelessWidget {
  const SearchListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}
