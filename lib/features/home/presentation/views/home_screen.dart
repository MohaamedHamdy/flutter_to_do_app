import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/core/utils/colors.dart';
import 'package:todo/features/deadline/presentation/views/deadline_screen.dart';
import 'package:todo/features/profile/presentation/views/profile_screen.dart';
import 'package:todo/features/tasks/presentation/views/tasks_screen.dart';
import 'widgets/app_bar_title.dart';
import 'widgets/home_nav_bar.dart';
import 'widgets/home_screen_body.dart';
import 'widgets/profile_picture_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List screens = [
    const HomeScreenBody(),
    const TasksScreen(),
    const DeadlineScreen(),
    const ProfileScreen(),
  ];

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
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
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
      extendBody: true,
      bottomNavigationBar: HomeNavBar(
        currentIndex: currentIndex,
      ),
    );
  }
}
