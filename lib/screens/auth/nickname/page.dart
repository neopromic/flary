import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class NickName extends StatelessWidget {
  const NickName({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //placeholder de um carregador de imagem de foto de perfil
            top: 130,
            left: screenWidth / 2.3 - 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: Container(
                color: Colors.red,
                width: 250,
                height: 250,
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 40,
            right: 40,
            child: ShadInputFormField(
              label: const Text('Nickname'),
              placeholder: const Text('Ex: John Doe'),
              validator: (v) {
                return null;
              },
            ),
          ),
          Positioned(
            top: 490,
            left: 40,
            right: 40,
            child: ShadInputFormField(
              label: const Text('Senha'),
              placeholder: const Text('Ex: JohnDoe123'),
              obscureText: true,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 250,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ShadButton(
                width: screenWidth * 0.5,
                onPressed: () {
                  //logica backend criar senha
                },
                child: const Text(
                  'Vai com tudo!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
