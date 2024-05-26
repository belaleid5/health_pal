import 'package:flutter/material.dart';
import 'package:health_pal/core/database/cached/cach_helper.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/services/service_locator.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/widgets/custom_button.dart';
import 'package:health_pal/features/onBoarding/presention/views/widget/custom_skip_widget.dart';
import 'package:health_pal/features/onBoarding/presention/views/widget/custom_smooth_indecator.dart';
import 'package:health_pal/features/onBoarding/presention/views/widget/page_view_dart.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController(initialPage: 0);
  bool isListPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageViewBody(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
               isListPage = index == 2;
              });
            },
          ),
          CustomButton(
            title: isListPage
                ? AppStrings.createAccount
                : AppStrings.next,
            onPressed: () {

              if(isListPage == true){
              getIt<CacheHelper>().saveData(key: "inBoardingVisited",value:  true);
                customNavgateReplacement(context, "/signUpView");
              }else{
                   controller.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceInOut);
              }
                            
          
            },
          ),
          verticalSpace(8),
          CustomSmoothPageIndicator(controller: controller),
          verticalSpace(28),
          const CustomSkipWidget(),
        ],
      ),
    );
  }
}