 import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_strings.dart';

import '../../../../../core/utlis/app_tetx_style.dart';

Padding customSelectGender({required void Function(String?)? onChanged,required String? gender}) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.textFormColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.textFormColor, width: 1),
          ),
        ),
        value: gender,
        hint: Text(
          AppStrings.gender,
          style: AppStyle.interText400Style14,
        ),
        onChanged: onChanged,
       
        validator: (String? value) {
          if (value?.isEmpty ?? true) {
            return 'Please select a gender';
          }
          return null;
        },
        items: <String>[
          'Male',
          'Female',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
