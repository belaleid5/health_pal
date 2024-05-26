import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';

class SectoinHaveAnAccount extends StatelessWidget {
  const SectoinHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavgateReplacement(context, "/signInView");
      },
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: AppStrings.haveAnAccount,
          style: AppStyle.interText400Style14,
          children: <TextSpan>[
            TextSpan(
              text: AppStrings.signIn,
              style: AppStyle.interText400Style14
                  .copyWith(color: AppColors.blueColor),
            ),
          ],
        ),
      ),
    );
  }
}
