import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/functions/show_toast.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/utlis/validator.dart';
import 'package:health_pal/core/widgets/custom_button.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom-text_form_field.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_cubi.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_state.dart';

class CustomSectionAuth extends StatefulWidget {
  const CustomSectionAuth({
    super.key,
  });

  @override
  State<CustomSectionAuth> createState() => _CustomSectionAuthState();
}

class _CustomSectionAuthState extends State<CustomSectionAuth> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          showToast(
              msg: "Successfully,Check your email to verfiy your account");
         

          if (kDebugMode) {
            print('Authentication successful for user: ${state.toString()}');
          }
        } else if (state is SignupFailureState) {
          // Display an error message
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
        return state is SignupLoadingState
            ? Center(
                child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ))
            : Form(
                key: authCubit.signupFormKey,
                child: Column(
                  children: [
                    verticalSpace(50),
                    CustomTextFormField(
                      onChanged: (name) {
                        authCubit.name = name;
                      },
                      validator: (val) {
                        if (!val!.isValidName) return 'Enter valid name';
                        return null;
                      },
                      icon: Icons.person,
                      hint: "Enter Your Name",
                      label: "Your Name",
                    ),
                    verticalSpace(5),
                    CustomTextFormField(
                      onChanged: (email) {
                        authCubit.emailAddress = email;
                      },
                      validator: (val) {
                        if (!val!.isValidEmail) return 'Enter valid Email';
                        return null;
                      },
                      icon: Icons.email_outlined,
                      hint: "Enter Your Email",
                      label: "Your Email",
                    ),
                    verticalSpace(5),
                    CustomTextFormField(
                      onChanged: (password) {
                        authCubit.password = password;
                      },
                      onPressed: () => authCubit.obscurePasswordText(),
                      obscureText: authCubit.obscurePasswordTextValue,
                      validator: (val) {
                        if (!val!.isValidPassword)
                          return 'Enter valid password Or week';
                        return null;
                      },
                      icon: authCubit.obscurePasswordTextValue == true
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      hint: "Enter Your Password",
                      label: "Your Password",
                    ),
                    verticalSpace(20),
                    CustomButton(
                        onPressed: () async {
                          if (authCubit.signupFormKey.currentState!
                              .validate()) {
                            await authCubit.signUpWithEmailAndPassword(context);
                          }
                        },
                        title: AppStrings.createAccount),
                  ],
                ),
              );
      },
    );
  }
}
