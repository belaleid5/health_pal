import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        customNavgatePushNamed(context, '/forgetPasswordView');
      },
      child: Text(
        'Forget Password',
        style: AppStyle.interText500Style16.copyWith(
          color: AppColors.blueColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
