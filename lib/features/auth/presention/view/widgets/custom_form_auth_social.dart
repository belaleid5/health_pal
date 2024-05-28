
import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/utlis/app_assets.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/widgets/custom_auth_social.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_cubi.dart';

class CustomFormAuthSocial extends StatelessWidget {
  const CustomFormAuthSocial({
    super.key,
    required this.authCubit,
  });

  final AuthCubit authCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          verticalSpace(20),
          CustomAuthSocial(
            onPressed: () {
              authCubit.signInWithGoogle(context: context);
            },
            titleAuth: AppStrings.signInWithGoogle,
            imageSvg: AppAssets.assetsImagesGoogleOriginal,
          ),
          verticalSpace(10),
          CustomAuthSocial(
            onPressed: () {
              authCubit.signInWithFacebook();
            },
            titleAuth: AppStrings.signInWithFacebook,
            imageSvg: AppAssets.assetsImagesFacebook,
          ),
          verticalSpace(14),
        ],
      );
  }
}
