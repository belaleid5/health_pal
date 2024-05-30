import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_assets.dart';
import 'package:health_pal/core/utlis/app_color.dart';

class CustomImageAvatar extends StatelessWidget {
  const CustomImageAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(32),
          image: const DecorationImage(
              image: AssetImage(
            AppAssets.assetsCircalrAvatar,
          ))),
    
    );
  }
}