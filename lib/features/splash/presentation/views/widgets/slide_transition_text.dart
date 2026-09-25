import 'package:flutter/material.dart';

class slideTransitionText extends StatelessWidget {
  const slideTransitionText({super.key, required this.slidinganimation});

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidinganimation,
          child: Text('Read free books'),
        );
      },
    );
  }
}
