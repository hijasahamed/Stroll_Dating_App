import 'package:flutter/material.dart';

class FadeImageWidget extends StatelessWidget {
  const FadeImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset('assets/images/fade.jpg', fit: BoxFit.cover),
    );
  }
}