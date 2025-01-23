import 'package:flutter/material.dart';
import 'package:stroll_dating_app/screen/ui_screen/ui_screen.dart';

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