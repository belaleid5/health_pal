import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom-section_logo.dart';
import 'package:health_pal/features/auth/presention/view/widgets/forget_password.dart';
import 'package:health_pal/features/auth/presention/view/widgets/section_auth-signIn.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_or_text.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_section_auth_social.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_section_title_screen.dart';
import 'package:health_pal/features/auth/presention/view/widgets/section_have_ann_account.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: CustomSectionLogo()),
              const SliverToBoxAdapter(
                child: CustomSectionTitleScreen(
                  title: AppStrings.welcome,
                  subTitle: AppStrings.hobe,
                ),
              ),
              const SliverToBoxAdapter(child: SectionFormAuthSignIn()),
              const SliverToBoxAdapter(
                child: CustomTextOR(),
              ),
              const SliverToBoxAdapter(
                child: CustomSectionAuthSocial(),
              ),
              SliverToBoxAdapter(
                child: verticalSpace(10),
              ),
              const SliverToBoxAdapter(
                child:ForgetPassword(),
              ),
               SliverToBoxAdapter(
                child: verticalSpace(10),
              ),
              SliverToBoxAdapter(
                child: SectoinHaveAnAccount(
                  titleSpanOne: AppStrings.haveAnAccount,
                  titleSpanTow: AppStrings.signIn,
                  onTap: () {
                    customNavgateReplacement(context, "/signUpView");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


