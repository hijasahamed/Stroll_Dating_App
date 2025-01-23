import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key, required this.screensize});
  final Size screensize;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromARGB(255, 23, 26, 32),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/Card.png',
              height: screensize.width / 5.5,
              width: screensize.width / 5.5,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'assets/images/fire.png',
              height: screensize.width / 5.5,
              width: screensize.width / 5.5,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'assets/images/Chat.png',
              height: screensize.width / 5.5,
              width: screensize.width / 5.5,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'assets/images/User.png',
              height: screensize.width / 5.5,
              width: screensize.width / 5.5,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
