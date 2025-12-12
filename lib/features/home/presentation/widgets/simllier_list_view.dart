
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/future_list_view_item.dart';

class SimllierListView extends StatelessWidget {
  const SimllierListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: const FeatureListViewItem(),
          ),
        ),
      ),
    );
  }
}
