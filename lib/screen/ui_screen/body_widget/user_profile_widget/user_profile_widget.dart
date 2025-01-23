import 'package:flutter/material.dart';
import 'package:stroll_dating_app/screen/ui_screen/body_widget/cards_widget/cards_widget.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key, required this.screensize});

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: screensize.width,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/images/dp.png'),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Angelina, 28',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'What is your favorite time of the day?',
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                '"Mine is definitely the peace in the morning."',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              spacing: 10,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    CardsWidget(
                      text: 'The peace in the early mornings',
                      profileText: 'A',
                    ),
                    CardsWidget(
                      text: 'The magical golden hours',
                      profileText: 'B',
                    ),
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    CardsWidget(
                      text: 'Wind-down time after dinners',
                      profileText: 'C',
                    ),
                    CardsWidget(
                      text: 'The serenity past midnight',
                      profileText: 'D',
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              spacing: 7,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pick your option.',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      'See who has a similar mind.',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/images/mic.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/arrow right.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
