import 'package:flary/screens/auth/signup/page.dart';
import 'package:flary/screens/onboarding/page.dart';
import 'package:flutter/material.dart';
import 'package:flary/screens/auth/signin/page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flary',
      home: const OnBoarding(),
      theme: ThemeData(brightness: Brightness.dark, useMaterial3: true),
      routes: {
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
      },
    );
  }
}
