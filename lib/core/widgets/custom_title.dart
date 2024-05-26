
import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyle.interText700Style18,
    );
  }
}
