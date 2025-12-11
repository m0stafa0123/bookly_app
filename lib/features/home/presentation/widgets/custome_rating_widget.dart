import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';

class CustomeRatingWidget extends StatelessWidget {
  const CustomeRatingWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 20),
        const SizedBox(width: 2),
        Text('4.8', style: Style.textStyle20),
        const SizedBox(width: 2),
        Text('(200)', style: Style.textStyle16.copyWith(color: Colors.white70)),
      ],
    );
  }
}
