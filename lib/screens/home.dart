import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(50, 126, 142, 1),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'ESTOQUE FÁCIL',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text('Sistema de Gerenciamento de Estoque',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Bem-vindo ao seu Sistema de Gerenciamento de Estoque',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
