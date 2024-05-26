import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/utlis/app_color.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';

class CustomAuthSocial extends StatelessWidget {
  const CustomAuthSocial({
    super.key,
    required this.titleAuth,
    required this.imageSvg,
    this.onPressed,
  });
  final String titleAuth, imageSvg;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      clipBehavior: Clip.none, // Do not clip button
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll<Color?>(Colors.white),
        shape: MaterialStatePropertyAll<OutlinedBorder?>(RoundedRectangleBorder(
          side: BorderSide(color: AppColors.textFormColor, width: 0.5),
          borderRadius: BorderRadius.circular(32),
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imageSvg,
            height: 20,
            width: 20,
          ),
          horizontalSpace(5),
          Text(
            titleAuth,
            style: AppStyle.interText500Style16
                .copyWith(fontSize: 14, color: AppColors.greyColor),
          ),
        ],
      ),
    );
  }
}
