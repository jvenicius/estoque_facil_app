import 'package:flutter/material.dart';
import 'package:estoque_facil/components/custom_app_bar.dart';
import 'package:estoque_facil/components/custom_text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isAutoLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Bem-vindo de volta!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Sistema de gestão e controle',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Inika',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.22,
                  ),
                ),
                const SizedBox(height: 24),
                const CustomTextField(
                  label: 'Email ou Usuário',
                  hintText: 'email@mail.com',
                ),
                const CustomTextField(
                  label: 'Senha',
                  hintText: '********',
                  obscureText: true,
                ),
                const SizedBox(height: 24),
                CheckboxListTile(
                  title: const Text(
                    'Login automático',
                    style: TextStyle(
                      color: Color(0x87707373),
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  value: _isAutoLogin,
                  onChanged: (bool? value) {
                    setState(() {
                      _isAutoLogin = value!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: const Color(0xFF4A6DC8),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF327E8E),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'ENTRAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Recuperar senha',
                    style: TextStyle(
                      color: Color(0xA5040C0C),
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'O acesso é criado pelo gerente da sua empresa! Entre em contato caso precise de um novo acesso.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Color(0xA5040C0C),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
