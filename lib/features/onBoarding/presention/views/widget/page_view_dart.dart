import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/widgets/custom_sup_title.dart';
import 'package:health_pal/core/widgets/custom_title.dart';
import 'package:health_pal/features/onBoarding/data/onBoarding_model.dart';
import 'package:health_pal/features/onBoarding/presention/views/widget/custom-image-onboarding.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.controller,
    this.onPageChanged,
  });

  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      child: PageView.builder(
          onPageChanged: onPageChanged,
          controller: controller,
          itemCount: onBordinglist.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CustomImageOnBoarding(
                  image: onBordinglist[index].image,
                ),
                verticalSpace(28),
                CustomTitle(
                  title: onBordinglist[index].title,
                ),
                verticalSpace(8),
                CustomSupTitle(
                  supTitle: onBordinglist[index].supTitle,
                ),
                verticalSpace(24),
              ],
            );
          }),
    );
  }
}
