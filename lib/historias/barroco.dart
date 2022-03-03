import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/widgets/texto-historia.dart';

class Barroco extends StatelessWidget {
  const Barroco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Image(
            image: AssetImage(
              'assets/img/barroco.jpg',
            ),
          ),
        ),
        FormatacaoText(
          destaque2: 'Características da pintura barroca: - Uso de técnicas de ilusão de profundidade; - Contrate entre sombra e luz; - Riqueza de detalhes;  - Dramatismo e aspecto sombrbrio.',
          textoColumn: 'Barroco é um estilo artístico que surgiu no século XVI, caracterizado por ter uma estética com excesso de ornamentos e representações do divino. O estilo barroco influenciou as várias faces da arte, como a música, a literatura, a arquitetura, as artes plásticas, etc. No entanto, entre os campos em que teve maior representação, assim como na arquitetura, destaca-se a pintura e a literatura.',
        ),
      ],
    );
  }
}

