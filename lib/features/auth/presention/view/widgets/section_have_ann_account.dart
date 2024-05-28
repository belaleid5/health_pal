import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';

class SectoinHaveAnAccount extends StatelessWidget {
  const SectoinHaveAnAccount({
    super.key, this.onTap, required this.titleSpanOne, required this.titleSpanTow,
  });

  final String titleSpanOne,titleSpanTow;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: titleSpanOne,
          style: AppStyle.interText400Style14,
          children: <TextSpan>[
            TextSpan(
              text:titleSpanTow,
              style: AppStyle.interText400Style14
                  .copyWith(color: AppColors.blueColor),
            ),
          ],
        ),
      ),
    );
  }
}
