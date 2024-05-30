import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_color.dart';

class CustomEditIcon extends StatelessWidget {
  const CustomEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130,
      left: 270,
      
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12))),
        child: Icon(
          Icons.edit,
          size: 15,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
