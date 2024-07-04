import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget? leading;

  const CustomAppBar({
    Key? key,
    this.height = kToolbarHeight,
    this.leading,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const NetworkImage("https://img.freepik.com/fotos-gratis/um-vasto-edificio-de-armazenamento-cheio-de-produtos-colocados-em-prateleiras-industriais-com-etiquetas_482257-83423.jpg?t=st=1720100474~exp=1720104074~hmac=d1a014e56fde1099cec3355fa028accf758043879e665ca442c9b0cc351723f3&w=1380"), // URL da sua imagem
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken), // Escurece a imagem
          alignment: Alignment.bottomLeft, // Alinha a imagem no canto inferior esquerdo
        ),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(20.0), // Arredonda o canto inferior esquerdo
        ),
      ),
      child: Stack(
        children: [
          AppBar(
            backgroundColor: Colors.transparent, // Deixa o fundo transparente para mostrar a imagem
            elevation: 0, // Remove a sombra do AppBar
            leading: leading,
          ),
          const Positioned(
            bottom: 8.0,
            right: 16.0,
            child: Row(
              children: [
                Text(
                  'Estoque ',
                  style: TextStyle(
                    color: Colors.white, // Alterado para branco para melhor contraste
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Fácil',
                  style: TextStyle(
                    color: Colors.white, // Alterado para branco para melhor contraste
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
