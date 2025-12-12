import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/books_action.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/custome_book_details_app_bar.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/custome_rating_widget.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/future_list_view_item.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/simllier_list_view.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomeBookDetailAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                child: FeatureListViewItem(),
              ),
              SizedBox(height: 42),
              Text(
                'Batman The Dark Knight ',
                style: Style.textStyle30.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Opacity(
                opacity: 0.7,
                child: Text(
                  'by Frank Miller',
                  style: Style.textStyle30.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 16),
              CustomeRatingWidget(mainAxisAlignment: MainAxisAlignment.center),
              SizedBox(height: 37),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: BooksAction(),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("You can also like", style: Style.textStyle20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SimllierListView(),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }
}
