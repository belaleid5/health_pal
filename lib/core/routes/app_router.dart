import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          return  OnBoardingView();
        },
       
      ),
    ],
  );
}
