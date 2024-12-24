import 'package:flary/_constants/styles.dart';
import 'package:flary/screens/auth/signup/page.dart';
import 'package:flary/screens/onboarding/page.dart';
import 'package:flutter/material.dart';
import 'package:flary/screens/auth/signin/page.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flary/screens/auth/nickname/page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.material(
      title: 'Flary',
      home: const OnBoarding(),
      darkTheme: ShadThemeData(
          colorScheme:
              const ShadSlateColorScheme.dark(background: AppColors.background),
          brightness: Brightness.dark),
      routes: {
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/nickname': (context) => const NickName(),
      },
    );
  }
}
