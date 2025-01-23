import 'package:flutter/material.dart';

class WaterImageWidget extends StatelessWidget {
  const WaterImageWidget({super.key, required this.screensize});

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: screensize.height / 1.65,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/water.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withAlpha((0.8 * 255).toInt()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
