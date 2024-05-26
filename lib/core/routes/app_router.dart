import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:health_pal/features/auth/presention/view/sign_in_view.dart';
import 'package:health_pal/features/auth/presention/view/sign_up_view.dart';
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
      GoRoute(
        path: '/homeView',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
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
    ],
  );
}
