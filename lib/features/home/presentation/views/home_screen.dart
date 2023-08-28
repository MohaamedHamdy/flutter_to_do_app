import 'package:flutter/material.dart';
import 'package:todo/core/utils/colors.dart';
import 'widgets/app_bar_title.dart';
import 'widgets/home_screen_body.dart';
import 'widgets/profile_picture_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ProfilePictureAppBar(),
        title: const AppBarTitle(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: MyColors.mainColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: MyColors.mainColor,
            ),
          ),
        ],
      ),
      body: const HomeScreenBody(),
    );
  }
}
