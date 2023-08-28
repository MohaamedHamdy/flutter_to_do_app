import 'package:flutter/material.dart';
import 'package:todo/features/home/presentation/views/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
    }
  }
}
