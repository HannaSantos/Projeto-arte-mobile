import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/widgets/texto-historia.dart';

class Nouveau extends StatelessWidget {
  const Nouveau({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Image(
            image: AssetImage(
              'assets/img/nouveau.jpg',
            ),
          ),
        ),
        FormatacaoText(
          destaque2: 'Os artistas do Art Nouveau apostavam em um estilo floreado, inspirado na natureza. As linhas curvas, irregulares e assimétricas, mosaicos e formas como folhagens, flores e animais são outras características do movimento.',
          textoColumn: 'Art Nouveau, ou Arte Nova, foi um movimento artístico francês que se espalhou pela Europa entre 1890 e 1910 e se manifestou principalmente nas artes plásticas, na escultura, no design e na arquitetura. A art nouveau que tinha como principal objetivo aproximar mais a arte das pessoas, já que as obras de arte se fabricavam massivamente com técnicas industriais.',
        ),
      ],
    );
  }
}