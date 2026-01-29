import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'core/theme.dart';

class EMRHelpApp extends StatelessWidget {
  const EMRHelpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EMR Help',
      theme: appTheme,
      home: const SplashScreen(),
    );
  }
}
