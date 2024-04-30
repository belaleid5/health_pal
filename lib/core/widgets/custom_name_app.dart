
import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';

class CustomNameApp extends StatelessWidget {
  const CustomNameApp({
    super.key, this.colorTitle,
  });
  final Color ? colorTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.appName,
      style: AppStyle.poppinsText400Style20.copyWith(
        color:  colorTitle ?? AppColors.whiteColor,
      ),
    );
  }
}
