import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

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
                  'E aí? :)',
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
            const Text(
                'Que daora ter você aqui! O Flary é o lugar pra trocar ideia e criar comunidades, com segurança e privacidade. Se joga, entre num grupo ou crie o seu!'),
            const SizedBox(height: 16),
            ShadInputFormField(
              label: const Text('E-mail'),
              placeholder: const Text('ex: johndoe@gmail.com'),
            ),
            const SizedBox(height: 16),
            // const TextField(
            ShadButton(
              width: screenWidth * 0.5,
              onPressed: () {
                Navigator.pushNamed(context, '/nickname');
              },
              child: const Text('Cadastrar'),
            ),
            ShadButton.link(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: const Text('Já possui uma conta?'),
            ),
          ],
        ),
      ),
    );
  }
}
