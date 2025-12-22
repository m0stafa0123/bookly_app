import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
import 'package:flutter_application_1/core/utils/routes.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/custome_rating_widget.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRoutes.kbookDetailsView);
          },
          child: SizedBox(
            width: 90,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.test),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                'The Dark Forest',
                style: Style.textStyle22,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'by Liu Cixin',
              style: Style.textStyle16.copyWith(color: Colors.white70),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text('19.99\$', style: Style.textStyle20),
                const SizedBox(width: 25),
                const CustomeRatingWidget(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
