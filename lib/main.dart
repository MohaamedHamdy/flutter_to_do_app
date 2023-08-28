import 'package:flutter/material.dart';
import 'package:todo/core/utils/app_router.dart';
// import 'package:todo/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(250, 250, 250, 0.98),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
              // color: ,
              // size: ,
              ),
        ),
      ),
      onGenerateRoute: AppRouter.generateRoute,
      // home: test(),
    );
  }
}
