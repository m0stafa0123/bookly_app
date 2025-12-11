import 'package:flutter/material.dart';

class CustomeBookDetailAppBar extends StatelessWidget {
  const CustomeBookDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
      ],
    );
  }
}
