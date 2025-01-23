import 'package:flutter/material.dart';
import 'package:stroll_dating_app/screen/ui_screen/body_widget/body_widget.dart';
import 'package:stroll_dating_app/screen/ui_screen/bottom_appbar_widget/bottom_appbar_widget.dart';

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