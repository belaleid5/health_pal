import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(
          title: 'LogOut',
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            customNavgateReplacement(context, '/signInView');
          },
        ),
      ),
    );
  }
}
