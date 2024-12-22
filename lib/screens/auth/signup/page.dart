import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'E aí :)',
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
            ElevatedButton(
              onPressed: () {
                // Lógica para cadastrar o usuário
              },
              child: const Text('Cadastrar'),
            ),
            const Text(
              'Já Tem Uma Conta?', //só lembrando que ainda falta adicionar a função do onPressed que leve pro SignIn
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
