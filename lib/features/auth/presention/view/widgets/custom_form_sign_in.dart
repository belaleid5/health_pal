
import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/utlis/validator.dart';
import 'package:health_pal/core/widgets/custom_button.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom-text_form_field.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_cubi.dart';

class CustomFormAuthSignIn extends StatelessWidget {
  const CustomFormAuthSignIn({
    super.key,
    required this.authCubit,
  });

  final AuthCubit authCubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: authCubit.signinFormKey,
      child: Column(
        children: [
          verticalSpace(50),
          CustomTextFormField(
            onChanged: (email) {
              authCubit.emailAddress = email;
            },
            validator: (val) {
              if (!val!.isValidEmail) return 'Enter valid Email';
              return null;
            },
            icon: Icons.email_outlined,
            hint: AppStrings.yourEmail,
            label: AppStrings.yourEmail,
          ),
          verticalSpace(5),
          CustomTextFormField(
            onChanged: (password) {
              authCubit.password = password;
            },
            onPressed: () => authCubit.obscurePasswordText(),
            obscureText: authCubit.obscurePasswordTextValue,
            validator: (val) {
              if (!val!.isValidPassword) {
                return 'Enter valid password Or week';
              }
              return null;
            },
            icon: authCubit.obscurePasswordTextValue == true
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            hint: AppStrings.password,
            label: AppStrings.password,
          ),
          verticalSpace(20),
          CustomButton(
              onPressed: () async {
                if (authCubit.signinFormKey.currentState!.validate()) {
                  await authCubit.sigInWithEmailAndPassword();
                }
              },
              title: AppStrings.signIn),
        ],
      ),
    );
  }
}
