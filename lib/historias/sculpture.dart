import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/widgets/texto-historia.dart';

class Sculpture extends StatelessWidget {
  const Sculpture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Image(
          image: AssetImage(
            'assets/img/VenusdeMilo.jpg',
          ),
        ),
        TextoHistoria(
          textoRow:
              'A Grécia Clássica é o berço ocidental da arte de esculpir, desde os seus primeiros artefatos em mármore ou bronze a partir do século 10 a.C., até o apogeu da era de Péricles, com as esculturas da Acrópole de Atenas.',
          textoRow1:
              'Sua origem baseia-se na imitação da natureza, com o intuito maior de representar o corpo humano. A escolha do material envolve a técnica utilizada. Novas técnicas como dobra e solda de chapas metálicas, moldagens com resinas, plásticos, materiais tridimensionais.',
          destaque:
              'A Vênus de Milo ou Vénus de Milo é uma estátua da Grécia Antiga pertencente ao acervo do Museu do Louvre, situado em Paris, França.',
        ),
      ],
    );
  }
}
