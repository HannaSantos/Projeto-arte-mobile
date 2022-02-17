import 'package:flutter/material.dart';

class TextoPrincipal extends StatelessWidget {
  const TextoPrincipal({ Key? key, required this.titulo, required this.tituloTransparente }) : super(key: key);
  final String titulo;
  final String tituloTransparente;

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
          padding: const EdgeInsets.only(left: 50),
          child: Text(
      tituloTransparente,
      style: const TextStyle(
          
          fontSize: 18,
          color: Color.fromARGB(155, 255, 255, 255),
      ),
    ),
        ),
      ],
    );
  }
  
}

