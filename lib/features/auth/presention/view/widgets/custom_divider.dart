import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.greyColor,
        height: 0.3,
      ),
    );
  }
}
