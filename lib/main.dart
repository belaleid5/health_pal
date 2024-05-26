import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:health_pal/core/database/cached/cach_helper.dart';
import 'package:health_pal/core/routes/app_router.dart';
import 'package:health_pal/core/services/service_locator.dart';
import 'package:health_pal/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  setupLocator();
  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
    );
  }
}
