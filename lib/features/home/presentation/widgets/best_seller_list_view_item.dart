import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/routes.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/presentation/view-model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/custome_rating_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                GoRouter.of(
                  context,
                ).push(AppRoutes.kbookDetailsView, extra: book);
              },
              child: SizedBox(
                width: 90,
                child: AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: NetworkImage(
                          book.volumeInfo.imageLinks.thumbnail,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      book.volumeInfo.title!,
                      style: Style.textStyle22,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    book.volumeInfo.authors != null
                        ? book.volumeInfo.authors![0]
                        : 'No Author',
                    style: Style.textStyle16.copyWith(color: Colors.white70),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text('free', style: Style.textStyle20),
                      const SizedBox(width: 25),
                      CustomeRatingWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
