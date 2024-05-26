import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/features/onBoarding/data/onBoarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onBordinglist.length,
      effect: JumpingDotEffect(
        dotHeight: 16,
        dotWidth: 16,
        jumpScale: .7,
        verticalOffset: 15,
        activeDotColor: AppColors.primaryColor,
      ),
    );
  }
}
