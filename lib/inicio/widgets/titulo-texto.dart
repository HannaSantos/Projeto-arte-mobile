import 'package:flutter/material.dart';

class TextoPrincipal extends StatelessWidget {
  const TextoPrincipal({
    Key? key,
    required this.titulo,
    required this.tituloTransparente,
    required this.texto,
  }) : super(key: key);
  
  final String titulo;
  final String tituloTransparente;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            tituloTransparente,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(155, 255, 255, 255),
            ),
          ),
        ),
        Text(
          texto,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
