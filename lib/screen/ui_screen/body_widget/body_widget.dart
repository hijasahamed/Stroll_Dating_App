import 'package:flutter/material.dart';
import 'package:stroll_dating_app/screen/ui_screen/body_widget/fade_image_widget/fade_image_widget.dart';
import 'package:stroll_dating_app/screen/ui_screen/body_widget/location_time_widget/location_time_widget.dart';
import 'package:stroll_dating_app/screen/ui_screen/body_widget/user_profile_widget/user_profile_widget.dart';
import 'package:stroll_dating_app/screen/ui_screen/body_widget/water_image_widget/water_image_widget.dart';

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
        FadeImageWidget(),
        WaterImageWidget(screensize: screensize),
        LocationTimeWidget(screensize: screensize),
        UserProfileWidget(screensize: screensize),
      ],
    );
  }
}