import 'package:class_12/screen/sp;ash_screen/splash_screen.dart';
import 'package:class_12/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project',
      theme: themeData,
      home: const SplashScreen(),
    );
  }
}
