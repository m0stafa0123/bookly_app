import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';

class CustomeRatingWidget extends StatelessWidget {
  const CustomeRatingWidget({super.key, this.mainAxisAlignment});
  final MainAxisAlignment? mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 20),
        const SizedBox(width: 2),
        Text('4.8', style: Style.textStyle20),
        const SizedBox(width: 2),
        Opacity(
          opacity: 0.7,
          child: Text(
            '(200)',
            style: Style.textStyle16.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
