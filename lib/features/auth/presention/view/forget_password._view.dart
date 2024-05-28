import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/widgets/custom_button.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom-section_logo.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom-text_form_field.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_app_bar_sliver.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_section_title_screen.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
          slivers: [
             const CustomAppbarSliver(),
            const SliverToBoxAdapter(
              child: CustomSectionLogo(),
            ),
             const SliverToBoxAdapter(
                child: CustomSectionTitleScreen(
                  title: AppStrings.forgetpassword,
                  subTitle: AppStrings.subTitlepassword,
                ),
              ),
        
        SliverToBoxAdapter(
                child: verticalSpace(50),
              ),
              const SliverToBoxAdapter(
                child: CustomTextFormField(  
                  icon: Icons.email,
                hint: AppStrings.yourEmail,
                 label:  AppStrings.yourEmail,
                ),),
        SliverToBoxAdapter(
                child: verticalSpace(50),
              ),
                 SliverToBoxAdapter(
                  child: CustomButton(
                    onPressed: (){},
                    
                    title:AppStrings.send),
                )
              
          ],
        ),
      ),
    );
  }
}

