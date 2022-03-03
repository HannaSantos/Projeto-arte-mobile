import 'package:flutter/material.dart';

class ImagensJogos extends StatelessWidget {
  const ImagensJogos({Key? key, required this.urlImg, required this.nomeObra})
      : super(key: key);

  final String urlImg;
  final String nomeObra;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Image(
            image: AssetImage(urlImg),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            nomeObra,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
