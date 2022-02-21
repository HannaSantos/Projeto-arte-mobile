import 'package:flutter/material.dart';

class TextoMenu extends StatelessWidget {
  const TextoMenu({Key? key, required this.textoMenu}) : super(key: key);

  final String textoMenu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        textoMenu,
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
