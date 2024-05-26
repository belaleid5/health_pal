import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/utlis/app_assets.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/widgets/custom_auth_social.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_cubi.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_state.dart';

class CustomSectionAuthSocial extends StatelessWidget {
  const CustomSectionAuthSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          customNavgateReplacement(context, "/homeView");
        } else if (state is SigninLoadingState) {
          Container(
            alignment: Alignment.center,
            color: AppColors.primaryColor.withOpacity(0.7),
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }else if(state is SigninFailureState){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
              backgroundColor: Colors.red,
            ),
          );
        }
      },

      
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
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
            const CustomAuthSocial(
              titleAuth: AppStrings.signInWithFacebook,
              imageSvg: AppAssets.assetsImagesFacebook,
            ),
            verticalSpace(14),
          ],
        );
      },
    );
  }
}
