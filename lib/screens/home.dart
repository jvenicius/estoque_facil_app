import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESTOQUE FÁCIL'),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
