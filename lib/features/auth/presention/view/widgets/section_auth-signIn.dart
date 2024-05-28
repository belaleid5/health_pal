import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/functions/show_toast.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/widgets/custom_circular_progress.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_form_sign_in.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_cubi.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_state.dart';

class SectionFormAuthSignIn extends StatelessWidget {
  const SectionFormAuthSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SigninSuccessState) {
         FirebaseAuth.instance.currentUser!.emailVerified ?
                   customNavgateReplacement(context, "/homeView"):
         showToast(
              backgroundColor: AppColors.primaryColor,
              msg: '  Please Verify Your  Account  ${state.toString()}');
          if (kDebugMode) {
            print('Authentication successful for user: ${state.toString()}');
          }
        } else if (state is SigninFailureState) {
          showToast(
              backgroundColor: Colors.red,
              msg: 'Vaild  Authentication user: ${state.toString()}');
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return state is SigninLoadingState
            ? const CustomCircularProgress()
            : CustomFormAuthSignIn(authCubit: authCubit);
      },
    );
  }
}
