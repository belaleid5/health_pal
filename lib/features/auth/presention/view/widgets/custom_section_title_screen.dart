import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/widgets/custom_sup_title.dart';
import 'package:health_pal/core/widgets/custom_title.dart';

class CustomSectionTitleScreen extends StatelessWidget {
  const CustomSectionTitleScreen({
    super.key, required this.title, required this.subTitle,
  });

 final  String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        verticalSpace(20),
         CustomTitle(title: title),
         CustomSupTitle(supTitle: subTitle),
      ],
    );
  }
}
