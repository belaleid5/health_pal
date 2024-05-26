
import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';

class CustomSupTitle extends StatelessWidget {
  const CustomSupTitle({
    super.key,
    required this.supTitle,
  });
  final String supTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      supTitle,
      style: AppStyle.interText400Style14,
      textAlign: TextAlign.center,
    );
  }
}
