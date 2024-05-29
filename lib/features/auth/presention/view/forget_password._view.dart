import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_forget-password_form.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom-section_logo.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_app_bar_sliver.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_section_title_screen.dart';


class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: CustomScrollView(
                  physics: BouncingScrollPhysics(),
          slivers: [
             CustomAppbarSliver(),
            SliverToBoxAdapter(
              child: CustomSectionLogo(),
            ),
             SliverToBoxAdapter(
                child: CustomSectionTitleScreen(
                  title: AppStrings.forgetpassword,
                  subTitle: AppStrings.subTitlepassword,
                ),
              ),
        
                SliverToBoxAdapter(
                  
                  
                  child: CustomForgetPasswordForm(),)
              
          ],
        ),
      ),
    );
  }
}
