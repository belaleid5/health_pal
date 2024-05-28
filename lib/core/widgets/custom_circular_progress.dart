
import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';

class CustomCircularProgress extends StatelessWidget {
  const CustomCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
        color: AppColors.primaryColor,
      ));
  }
}
