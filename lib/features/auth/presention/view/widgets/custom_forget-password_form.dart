import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/functions/show_toast.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/widgets/custom_button.dart';
import 'package:health_pal/core/widgets/custom_circular_progress.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom-text_form_field.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_cubi.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_state.dart';

class CustomForgetPasswordForm extends StatefulWidget {
  const CustomForgetPasswordForm({
    super.key,
  });

  @override
  State<CustomForgetPasswordForm> createState() =>
      _CustomForgetPasswordFormState();
}

class _CustomForgetPasswordFormState extends State<CustomForgetPasswordForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
                    showToast(msg: 'cheeck your email for resset password');
          customNavgateReplacement(context, "/signInVew");
        } else if (state is ResetPasswordFailureState) {
          showToast(msg: state.errMessage);
        }
      },
      builder: (context, state) {
        final AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.forgotPasswordFormKey,
          child: Column(
            children: [
              verticalSpace(50),
              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (email) {
                  authCubit.emailAddress = email;
                },
                icon: Icons.email,
                hint: AppStrings.yourEmail,
                label: AppStrings.yourEmail,
              ),
              verticalSpace(30),
              state is ResetPasswordLoadingState
                  ? const CustomCircularProgress()
                  : CustomButton(
                      onPressed: () {
                        if (authCubit.forgotPasswordFormKey.currentState!
                            .validate()) {
                          authCubit.sendPasswordResetEmail();
                        }
                      },
                      title: AppStrings.resetPassword),
            ],
          ),
        );
      },
    );
  }
}
