  import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customNavgateReplacement(BuildContext context,String path) {
    GoRouter.of(context).pushReplacement(path);
  }