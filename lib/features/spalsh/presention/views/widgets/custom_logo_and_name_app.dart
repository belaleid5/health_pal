
import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/widgets/custom_logo_app.dart';
import 'package:health_pal/core/widgets/custom_name_app.dart';

class CustomLogoAndNameAppSection extends StatelessWidget {
  const CustomLogoAndNameAppSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [const CustomLogo(), verticalSpace(10), const CustomNameApp()],
    );
  }
}
