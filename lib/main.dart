import 'package:flutter/material.dart';
import 'package:health_pal/core/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      routerConfig:AppRouter().router,
    );
  }
}

