import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';

class SlidingText extends StatelessWidget {
  final Animation<Offset> slidingAnimation;

  const SlidingText({Key? key, required this.slidingAnimation})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Welcome to Bookly',
            textAlign: TextAlign.center,
            style: Style.textStyle20,
          ),
        );
      },
    );
  }
}
