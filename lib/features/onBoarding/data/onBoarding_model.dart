import 'package:health_pal/core/utlis/app_assets.dart';
import 'package:health_pal/core/utlis/app_strings.dart';

class OnBoardingModel {
  final String image, title, supTitle;

  OnBoardingModel(
      {required this.image, required this.title, required this.supTitle});
}

List<OnBoardingModel> onBordinglist = [
  OnBoardingModel(
      image: AppAssets.assetsImagesOnboarding1,
      title: AppStrings.titleOnBoardingOne,
      supTitle: AppStrings.supTitleOnbardingOneOrtow),


  OnBoardingModel(image: AppAssets.assetsImagesOnboarding2,
   title: AppStrings.titleOnBoardingTow, supTitle: AppStrings.supTitleOnbardingOneOrtow),
  
  
  
  OnBoardingModel(image: AppAssets.assetsImagesOnBoarding3,
   title: AppStrings.titleOnBoardingThree, 
   supTitle: AppStrings.supTitleOnboardingthree),
];
