import 'package:flutter/material.dart';
import 'package:health_pal/core/database/cached/cach_helper.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/services/service_locator.dart';
import 'package:health_pal/core/utlis/app_assets.dart';
import 'package:health_pal/features/spalsh/presention/views/widgets/custom_logo_and_name_app.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
  final   inBoardingVisited =  
  getIt<CacheHelper>().getData(key: "inBoardingVisited") ?? false;
    if(inBoardingVisited == true){
            delayedNavagte(context,"/signUpView");

    }else{
         delayedNavagte(context,"/onBoarding");
 
    }

    super.initState();
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: coverImage(),
        child: const CustomLogoAndNameAppSection(),
      ),
    );
  }



  BoxDecoration coverImage() {
    return const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.assetsImagesBackground),
            fit: BoxFit.cover));
  }
}
 void delayedNavagte(BuildContext context, String path) {
       Future.delayed(const Duration(seconds: 2), () {
      customNavgateReplacement(context, path);
    });
  }