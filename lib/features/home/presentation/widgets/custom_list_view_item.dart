import 'package:flutter/material.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              image: AssetImage('assets/images/test.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
