import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Stroll Dating App',
      debugShowCheckedModeBanner: false,
      home: UserInterfaceScreen(screensize: screensize),
    );
  }
}

class UserInterfaceScreen extends StatelessWidget {
  const UserInterfaceScreen({super.key, required this.screensize});
  final Size screensize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                        CircleAvatar(radius: 30, backgroundColor: Colors.grey),
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
                      style: TextStyle(fontSize: 14, color: Colors.grey,fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Column(
                    spacing: 10,
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          buildOption('The peace in the early mornings', context,'A'),
                          buildOption('The magical golden hours', context,'B'),
                        ],
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          buildOption('Wind-down time after dinners', context,'C'),
                          buildOption('The serenity past midnight', context,'D'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(color: Color(0XFF0F1115)),
    );
  }

  Widget buildOption(String text, BuildContext context, String profileText) {
    return Expanded(
      child: Container( 
        decoration: BoxDecoration( 
          color: Color(0XFF232A2E),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: profileText=='D'? Color(0XFF8B88EF): Colors.transparent,width: 2)
        ),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Row(
            children: [
              Container(
                width: 25,
                height: 25,               
                decoration: BoxDecoration(
                  border: Border.all(color: profileText=='D'? Colors.transparent: Colors.white),
                  shape: BoxShape.circle,
                  color: profileText=='D'? Color(0XFF8B88EF): Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    profileText,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> options = [
  {'title': 'The peace in the early mornings', 'id': 'A'},
  {'title': 'The magical golden hours', 'id': 'B'},
  {'title': 'Wind-down time after dinners', 'id': 'C'},
  {'title': 'The serenity past midnight', 'id': 'D'},
];
