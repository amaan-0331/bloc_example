import 'package:bloc_example/src/views/home_view.dart';
import 'package:bloc_example/theme.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppTheme.darkTheme(),
      theme: AppTheme.lightTheme(),
      themeMode: ThemeMode.dark,
      home: const HomeView(),
    );
  }
}
