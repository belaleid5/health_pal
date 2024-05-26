
import 'package:flutter/material.dart';

class CustomImageOnBoarding extends StatelessWidget {
  const CustomImageOnBoarding({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      width: double.infinity,
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
