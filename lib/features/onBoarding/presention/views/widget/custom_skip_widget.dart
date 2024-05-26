import 'package:flutter/material.dart';
import 'package:health_pal/core/database/cached/cach_helper.dart';
import 'package:health_pal/core/functions/app_navgate.dart';
import 'package:health_pal/core/services/service_locator.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/utlis/app_tetx_style.dart';

class CustomSkipWidget extends StatelessWidget {
  const CustomSkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        AppStrings.skip,
        style: AppStyle.interText400Style14,
      ),
      onPressed: () {
        getIt<CacheHelper>().saveData(key: "inBoardingVisited",value:  true);
        customNavgateReplacement(context, "/signInView");
      },
    );
  }
}
