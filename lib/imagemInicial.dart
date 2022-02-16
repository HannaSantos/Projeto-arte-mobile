import 'package:flutter/material.dart';

class ImagemInicial extends StatelessWidget {
  const ImagemInicial({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/nascimento-venus.jpg',
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}