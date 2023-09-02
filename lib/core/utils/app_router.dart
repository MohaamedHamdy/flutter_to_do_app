import 'package:flutter/material.dart';
import 'package:todo/features/home/presentation/views/home_screen.dart';
import 'package:todo/features/task_details/presentation/views/task_detail_screen.dart';

class AppRouter {
  static const kTaskDetail = '/taskDetail';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case kTaskDetail:
        return MaterialPageRoute(
          builder: (_) => const TaskDetailScreen(),
        );
    }
    return null;
  }
}
