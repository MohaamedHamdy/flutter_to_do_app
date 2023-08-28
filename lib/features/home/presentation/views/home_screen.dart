import 'package:flutter/material.dart';
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
      ),
      body: const HomeScreenBody(),
    );
  }
}
