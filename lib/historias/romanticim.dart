import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/widgets/texto-historia.dart';

class Romanticim extends StatelessWidget {
  const Romanticim({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Image(
          image: AssetImage(
            'assets/img/romanticism.jpg',
          ),
        ),
        FormatacaoText(
          destaque2: 'Características: - Exaltação da natureza; - liberdade de expressão com foco no subjetivismo; - valorização dos sentimentos; - idealização da mulher; - fuga da realidade;',
          textoColumn: 'Romântico significava pitoresco: expressão de uma emoção que é definida e que foi provocada pela visão de uma paisagem. Ao mesmo tempo, acontecia a Revolução Francesa, um dos eventos mais emblemáticos da história. Nesse período, a França passava por uma forte crise. Assim, a população se rebelou contra o absolutismo do sistema e à classe dominante. Logo, o movimento contou com grande parte da população, transformando-se em um evento revolucionário e fundamental para a propagação dos direitos sociais e individuais. Esse cenário provocou mudanças e gerou reflexões na sociedade.',
        ),
      ],
    );
  }
}