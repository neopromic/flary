import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'E aí',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const Text(
                'Que daora ter você aqui! O Flary é o lugar pra trocar ideia e criar suas comunidades, sempre com segurança e privacidade. Se joga, entra num grupo ou cria o seu. Suas conversas estão seguras!'),
            const TextField(
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            const SizedBox(height: 32),
            ShadButton(
              width: screenWidth * 0.5,
              onPressed: () {
                // Lógica para cadastrar o usuário
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
