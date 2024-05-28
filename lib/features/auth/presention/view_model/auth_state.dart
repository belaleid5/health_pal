class AuthState {}

final class AuthInitial extends AuthState {}

final class SignupLoadingState extends AuthState {}

final class SignupSuccessState extends AuthState {}


final class SignupFailureState extends AuthState {
  final String errMessage;

  SignupFailureState({required this.errMessage});
}




final class SigninCancalledState extends AuthState {}


final class SigninLoadingState extends AuthState {}

final class SigninSuccessState extends AuthState {}
final class SigninFailureState extends AuthState {
  final String errMessage;

  SigninFailureState({required this.errMessage});
}








final class SigninLoadingSocialState extends AuthState {}

final class SigninSuccessSocialState extends AuthState {}
final class SigninCancalledSocialState extends AuthState {}

final class SigninFailureSocialState extends AuthState {
  final String errMessage;

  SigninFailureSocialState({required this.errMessage});
}



final class ResetPasswordLoadingState extends AuthState {}

final class ResetPasswordSuccessState extends AuthState {}

final class ResetPasswordFailureState extends AuthState {
  final String errMessage;

  ResetPasswordFailureState({required this.errMessage});
}




final class ObscurePasswordTextUpdateState extends AuthState {}