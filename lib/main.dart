import 'package:flutter/material.dart';
import 'package:estoque_facil/screens/home.dart';

void main() {
  runApp(const EstoqueFacil());
}

class EstoqueFacil extends StatelessWidget {
  const EstoqueFacil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
        ).copyWith(
          secondary: Colors.blueAccent[700],
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.accent,
        ),
      ),
      home: const Home(),
    );
  }
}
