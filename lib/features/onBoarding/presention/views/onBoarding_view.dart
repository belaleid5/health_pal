import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';
import 'package:health_pal/features/onBoarding/data/onBoarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 650,
            child: PageView.builder(
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
          ),
          customButton(),
          verticalSpace(8),
          CustomSmoothPageIndicator(controller: controller),
          verticalSpace(28),
          CustomSkipWidget(),
        ],
      ),
    );
  }
}

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyle.interText700Style18,
    );
  }
}

class CustomSupTitle extends StatelessWidget {
  const CustomSupTitle({
    super.key,
    required this.supTitle,
  });
  final String supTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      supTitle,
      style: AppStyle.interText400Style14,
      textAlign: TextAlign.center,
    );
  }
}

class CustomSkipWidget extends StatelessWidget {
  const CustomSkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.skip,
      style: AppStyle.interText400Style14,
    );
  }
}

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

class customButton extends StatelessWidget {
  const customButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(311, 48),
        backgroundColor: AppColors.primaryColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(61))),
      ),
      onPressed: () {},
      child: Text(
        AppStrings.next,
        style: AppStyle.interText500Style16.copyWith(),
      ),
    );
  }
}

class CustomImageOnBoarding extends StatelessWidget {
  const CustomImageOnBoarding({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        height: 480,
        width: 500,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ));
  }
}
