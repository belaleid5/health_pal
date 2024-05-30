import 'package:flutter/material.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_app_bar_sliver.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom_circalr_avatar.dart';
import 'package:health_pal/features/auth/presention/view/widgets/section_form_user_data.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAppbarSliver(
            expandedHeight: 80,
            title: AppStrings.titleProfile,
          ),
          SliverToBoxAdapter(
            child: CustomCircalAvatar(),
          ),
          SliverToBoxAdapter(
            child: SectionFormUSerData(),
          ),
        ],
      ),
    );
  }
}





