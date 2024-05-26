import 'package:flutter/material.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom-section_logo.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_or_text.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_section_auth.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_section_auth_social.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_section_title_screen.dart';
import 'package:health_pal/features/auth/presention/view/widgets/section_have_ann_account.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CustomSectionLogo()),
              SliverToBoxAdapter(
                child: CustomSectionTitleScreen(),
              ),
              SliverToBoxAdapter(
                child: CustomSectionAuth(),
              ),
              SliverToBoxAdapter(
                child: CustomTextOR(),
              ),
              SliverToBoxAdapter(
                child: CustomSectionAuthSocial(),
              ),
              SliverToBoxAdapter(
                child: SectoinHaveAnAccount(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

