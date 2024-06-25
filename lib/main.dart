import 'package:flutter/material.dart';
import 'package:estoque_facil/screens/home.dart';

void main() {
  runApp(const EstoqueFacil());
}

class EstoqueFacil extends StatelessWidget {
  const EstoqueFacil({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
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
