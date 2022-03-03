import 'package:flutter/material.dart';

class TextoPerguntas extends StatelessWidget {
  const TextoPerguntas({Key? key, required this.textoPergunta})
      : super(key: key);

  final String textoPergunta;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          textoPergunta,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
