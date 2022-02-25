import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/widgets/texto-historia.dart';

class Realism extends StatelessWidget {
  const Realism({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Image(
          image: AssetImage(
            'assets/img/realismo.jpg',
          ),
        ),
        
        TextoHistoria(
          textoRow:
              'O realismo foi um movimento literário e artístico que teve início em meados do século XIX, na França. Como o próprio nome sugere, essa manifestação cultural significou um olhar mais realista e objetivo sobre a existência e as relações humanas, surgindo como oposição ao romantismo e sua visão idealizada da vida.',
          textoRow1:
              'O contexto histórico e social no período do realismo foi bastante conturbado. Foi uma época de grandes transformações que revolucionaram a forma das pessoas se relacionarem e entenderem a realidade ao seu redor.',
          destaque:
              'na literatura, o Realismo, movimento em que o artista é, ao mesmo tempo, um participante e um observador do mundo.',
        ),
      ],
    );
  }
}