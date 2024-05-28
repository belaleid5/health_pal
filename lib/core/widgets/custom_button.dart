import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.title,
  });
  final Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
       fixedSize: const Size(400, 48),     
          foregroundColor: AppColors.whiteColor,
        backgroundColor: AppColors.primaryColor, // لون النص
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32), // شكل الزر
        ),
      ),
      child:  Text(title),
    );
  
    // );
  }
}
