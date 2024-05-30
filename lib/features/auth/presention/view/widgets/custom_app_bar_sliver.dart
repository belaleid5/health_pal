import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';

class CustomAppbarSliver extends StatelessWidget {
  const CustomAppbarSliver({
    super.key,
    this.title, 
    this.expandedHeight,
  });
  final String? title;
 final  double? expandedHeight;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(title!),
      pinned: true,
      expandedHeight:expandedHeight ??170,
      elevation: 0.0,
      backgroundColor: AppColors.whiteColor,
    );
  }
}
