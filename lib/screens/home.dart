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
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(
              80), // Altura preferida para o widget abaixo do AppBar
          child: Column(
            children: [
              CircleAvatar(
                // Avatar
                backgroundImage:
                    AssetImage('assets/images/avatar.jpg'), // Imagem do avatar
                radius: 30, // Raio do avatar
              ),
              SizedBox(height: 8), // Espaçamento entre o avatar e o texto
              Text(
                // Nome da pessoa
                'Nome da Pessoa',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white, // Cor do texto
                ),
              ),
            ],
          ),
        ),
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
