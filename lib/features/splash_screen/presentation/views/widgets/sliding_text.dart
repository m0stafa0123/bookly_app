import 'package:flutter/material.dart';

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
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: Colors.white),
          ),
        );
      },
    );
  }
}
