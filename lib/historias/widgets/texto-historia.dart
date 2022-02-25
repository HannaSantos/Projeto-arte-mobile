import 'package:flutter/material.dart';

class TextoHistoria extends StatelessWidget {
  const TextoHistoria({
    Key? key,
    required this.textoRow,
    required this.textoRow1,
    required this.destaque,
  }) : super(key: key);

  final String textoRow;
  final String textoRow1;
  final String destaque;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 350,
          child: Text(
            destaque,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: <Widget>[
            SizedBox(
              height: 222,
              width: 170,
              child: Text(
                textoRow,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 222,
              width: 170,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  textoRow1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FormatacaoText extends StatelessWidget {
  const FormatacaoText({
    Key? key,
    required this.destaque2,
    required this.textoColumn,
  }) : super(key: key);

  final String destaque2;
  final String textoColumn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 350,
          child: Text(
            destaque2,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 210,
          width: 320,
          child: Text(
            textoColumn,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
