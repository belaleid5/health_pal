// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.label,
    this.icon,
    this.validator,
    this.keyboardType,
    this.onPressed,
    this.obscureText,
    this.onChanged, this.controller,
  });

  final String hint;
  final String label;
  final IconData? icon;
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final void Function()? onPressed;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChanged,
        validator: validator,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          labelStyle: AppStyle.interText400Style14,
          hintStyle: AppStyle.interText500Style16
              .copyWith(color: AppColors.textFormColor),
          prefixIcon: IconButton(
            icon: Icon(icon),
            color: AppColors.textFormColor,
            onPressed: onPressed,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.textFormColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.textFormColor, width: 1),
          ),
        ),
      ),
    );
  }
}
