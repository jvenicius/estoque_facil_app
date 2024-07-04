import 'package:flutter/material.dart';
import '../components/custom_app_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text(
          'Bem-vindo ao seu Sistema de Gerenciamento de Estoque',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
