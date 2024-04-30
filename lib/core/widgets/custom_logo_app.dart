
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_pal/core/utlis/app_assets.dart';
import 'package:health_pal/core/utlis/app_color.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
    this.colorlogo,
  });
  final Color? colorlogo;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return SvgPicture.asset(
      AppAssets.assetsImagesVector,
      // ignore: deprecated_member_use
      color: colorlogo ?? AppColors.whiteColor,
    );
  }
}
