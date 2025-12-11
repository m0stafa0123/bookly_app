import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/best_seller_list_view_item_builder.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/custome_app_bar.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomeAppBar(),
              const FeatureListView(),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Best Sellers", style: Style.textStyle20),
              ),
            ],
          ),
        ),
        SliverFillRemaining(child: BestSellerListViewItemBuilder()),
      ],
    );
  }
}
