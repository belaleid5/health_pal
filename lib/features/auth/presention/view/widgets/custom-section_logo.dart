
import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/widgets/custom_logo_app.dart';
import 'package:health_pal/core/widgets/custom_name_app.dart';

class CustomSectionLogo extends StatelessWidget {
  const CustomSectionLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomLogo(colorlogo: Colors.black,),
             verticalSpace(20),
             const CustomNameApp(colorTitle:Colors.black,)],
        );
  }
}