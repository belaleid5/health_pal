import 'package:get_it/get_it.dart';
import 'package:health_pal/core/database/cached/cach_helper.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());

// Alternatively you could write it if you don't like global variables
}