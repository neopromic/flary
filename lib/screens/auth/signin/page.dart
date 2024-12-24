import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final double screenWidth = MediaQuery.of(context).size.width;
    final TextStyle textMuted = ShadTheme.of(context).textTheme.muted;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              //documentação que usei de base:
              // https://pub.dev/documentation/animated_text_kit/latest/animated_text_kit/
              // https://medium.com/@flutternewshub/animated-text-kit-bring-texts-to-life-in-flutter-with-style-16ab19d04218
              animatedTexts: [
                TypewriterAnimatedText(
                  'Bem-vindo de volta ao Flary!',
                  textStyle: const TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 120),
                ),
              ],
              repeatForever: true,
              pause: const Duration(milliseconds: 5000),
            ),
            Text(
              'Olha quem apareceu! Bora botar pra quebrar e fazer isso aqui acontecer de novo!',
              style: textMuted,
            ),
            const SizedBox(height: 16),
            ShadInputFormField(
              label: const Text('E-mail'),
              placeholder: const Text('ex: johndoe@gmail.com'),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            ShadInputFormField(
              label: const Text('Senha'),
              placeholder: const Text('ex: JohnDoe123'),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            ShadButton(
              width: screenWidth * 0.5,
              onPressed: () {
                print("hello");
              },
              child: const Text('Entrar'),
            ),
            const SizedBox(height: 16),
            ShadButton.link(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text(
                'Ainda não possui uma conta?',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
