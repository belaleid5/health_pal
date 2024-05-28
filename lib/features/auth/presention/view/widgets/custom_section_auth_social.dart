import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/functions/show_toast.dart';
import 'package:health_pal/core/widgets/custom_circular_progress.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_form_auth_social.dart';
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
        if (state is SigninSuccessSocialState) {
          showToast(
              msg: "Successfully Authentication");
          customNavgateReplacement(context, '/homeView');

          if (kDebugMode) {
            print('Authentication successful for user: ${state.toString()}');
          }
        } else if (state is SigninFailureSocialState) {
          // Display an error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
              backgroundColor: Colors.red,
            ),
          );
        } else if (state is SigninCancalledSocialState) {
          customNavCanalled(context);

          if (kDebugMode) {
            print('Cancalled Authentication  user: ${state.toString()}');
          }
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return state is SigninLoadingSocialState
            ? const CustomCircularProgress()
            : CustomFormAuthSocial(authCubit: authCubit);
      },
    );
  }
}
