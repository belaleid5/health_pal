import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:health_pal/features/auth/presention/view/forget_password._view.dart';
import 'package:health_pal/features/auth/presention/view/log_in_view.dart';
import 'package:health_pal/features/auth/presention/view/create_account_view.dart';
import 'package:health_pal/features/auth/presention/view_model/auth_cubi.dart';
import 'package:health_pal/features/home/presention/view/home_view.dart';
import 'package:health_pal/features/onBoarding/presention/views/onBoarding_view.dart';
import 'package:health_pal/features/spalsh/presention/views/splash_view.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/onBoarding',
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingView();
        },
      ),
      


      /*auth screens*/
      GoRoute(
        path: '/signUpView',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignUpView(),
          );
        },
      ),
      GoRoute(
        path: '/signInView',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignInView(),
          );
        },
      ),


  GoRoute(
        path: '/forgetPasswordView',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => AuthCubit(),
            child: const ForgetPasswordView(),
          );
        },
      ),


      GoRoute(
        path: '/homeView',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),

    ],
  );
}
