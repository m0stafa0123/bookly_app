import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AspectRatio(
          aspectRatio: 2.7 / 4,
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
        const SizedBox(width: 30),
      ],
    );
  }
}
