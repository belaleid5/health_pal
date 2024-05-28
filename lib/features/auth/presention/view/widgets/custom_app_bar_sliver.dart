import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';

class CustomAppbarSliver extends StatelessWidget {
  const CustomAppbarSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
     pinned: true,
     expandedHeight: 170.0,
     elevation: 0.0,
     backgroundColor: AppColors.whiteColor,
              );
  }
}
