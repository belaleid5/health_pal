import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_divider.dart';

class CustomTextOR extends StatelessWidget {
  const CustomTextOR({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        verticalSpace(24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "OR",
                style: AppStyle.interText500Style16
                    .copyWith(color: AppColors.greyColor),
              ),
            ),
            const CustomDivider(),
          ],
        ),
        verticalSpace(16),
      ],
    );
  }
}

