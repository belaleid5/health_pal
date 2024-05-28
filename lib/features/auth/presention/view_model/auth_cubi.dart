import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? name;
  String? emailAddress;
  String? password;
  bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  GlobalKey<FormState> signinFormKey = GlobalKey();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey();

  Future<void> signUpWithEmailAndPassword(BuildContext context) async {
    try {
      emit(SignupLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      /* await addUserProfile();*/
      await verifyEmail();
      customNavgateReplacement(context, '/signInView');
      emit(SignupSuccessState());
    } on FirebaseAuthException catch (e) {
      _signUpHandleException(e);
    } catch (e) {
      emit(SignupFailureState(errMessage: e.toString()));
    }
  }

  void _signUpHandleException(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(
          SignupFailureState(errMessage: 'The password provided is too weak.'));
    } else if (e.code == 'email-already-in-use') {
      emit(SignupFailureState(
          errMessage: 'The account already exists for that email.'));
    } else if (e.code == 'invalid-email') {
      emit(SignupFailureState(errMessage: 'The email is invalid.'));
    } else {
      emit(SignupFailureState(errMessage: e.code));
    }
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      emit(SigninLoadingSocialState());
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
        emit(SigninSuccessSocialState());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          _signUpHandleException(e);
        } else if (e.code == 'invalid-credential') {
          _signUpHandleException(e);
        }
      } catch (e) {
        emit(SigninFailureSocialState(errMessage: e.toString()));
      }
    }

    return user;
  }

  Future<void> signInWithFacebook() async {
    var _auth;
    try {
      emit(SigninLoadingSocialState());

      final LoginResult result = await FacebookAuth.instance.login();
      switch (result.status) {
        case LoginStatus.success:
          final AuthCredential facebookCredential =
              FacebookAuthProvider.credential(result.accessToken!.tokenString);
          _auth.signInWithCredential(facebookCredential);
          return emit(SigninSuccessSocialState());

        case LoginStatus.cancelled:
          return emit(SigninCancalledSocialState());
        case LoginStatus.failed:
          return emit(SigninFailureSocialState(errMessage: state.toString()));
        default:
          return;
      }
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future<void> sigInWithEmailAndPassword() async {
    try {
      emit(SigninLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SigninSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SigninFailureState(errMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SigninFailureState(
            errMessage: 'Wrong password provided for that user.'));
      } else {
        emit(SigninFailureState(errMessage: 'Check your Email and password!'));
      }
    } catch (e) {
      emit(
        SigninFailureState(
          errMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> resetPasswordWithLink() async {
    try {
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ResetPasswordSuccessState());
    } catch (e) {
      emit(ResetPasswordFailureState(errMessage: e.toString()));
    }
  }

  // // Future<void> addUserProfile() async {
  // //   CollectionReference users = FirebaseFirestore.instance.collection("users");
  // //   await users.add({
  // //     "email": emailAddress,
  // //     "frist_name": fristName,
  // //     "last_name": lastName,
  // //   });
  // }
}
