import 'package:flutter/material.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_edite_icon.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_image_circal_avatar.dart';

class CustomCircalAvatar extends StatelessWidget {
  const CustomCircalAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 202,
      width: 202,
      child: Stack(
        children: [
          CustomImageAvatar(),
          CustomEditIcon(),
        ],
      ),
    );
  }
}