import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              //documentação que usei de base: https://medium.com/@flutternewshub/animated-text-kit-bring-texts-to-life-in-flutter-with-style-16ab19d04218
              animatedTexts: [
                TypewriterAnimatedText(
                  'Bem-vindo de volta ao Flary!!',
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
            ),
            const Text(
                'Olha quem apareceu! Bora botar pra quebrar e fazer isso aqui acontecer de novo!'),
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
              enableSuggestions: true,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                print("hello");
              },
              child: const Text('Entrar'),
            ),
            const Text(
              'Não Tem Uma Conta?', //só lembrando que ainda falta adicionar a função do onPressed que leve pro SignUp
              style: TextStyle(
                height: 5,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
