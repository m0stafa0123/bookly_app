import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/features/search/presentation/widgets/customeSearchTextField.dart';
import 'package:flutter_application_1/features/search/presentation/widgets/seach_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          SizedBox(height: 15),
          Text("Best Sellers", style: Style.textStyle20),
          SizedBox(height: 15),
          Expanded(child: SearchListViewItem()),
        ],
      ),
    );
  }
}
