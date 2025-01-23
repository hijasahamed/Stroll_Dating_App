import 'package:flutter/material.dart';
import 'package:stroll_dating_app/screen/ui_screen/bottom_appbar_widget/bottom_appbar_widget.dart';
import 'package:stroll_dating_app/screen/ui_screen/cards_widget/cards_widget.dart';

class UserInterfaceScreen extends StatelessWidget {
  const UserInterfaceScreen({super.key, required this.screensize});
  final Size screensize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(screensize: screensize),
      bottomNavigationBar: BottomAppBarWidget(screensize: screensize,),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.screensize,
  });

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset('assets/images/fade.jpg', fit: BoxFit.cover),
        ),
        Positioned(
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
        ),
        Positioned(
          top: screensize.height / 12,
          left: 0,
          right: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 5,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 5,
                children: [
                  Text(
                    'Stroll Bonfire',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/clock.png',
                    height: 18,
                    width: 18,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '22h 00m',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/person.png',
                    height: 18,
                    width: 18,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '103',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
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
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
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
        ),
      ],
    );
  }
}
