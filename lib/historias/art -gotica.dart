import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/widgets/texto-historia.dart';

class ArtGotica extends StatelessWidget {
  const ArtGotica({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Image(
          image: AssetImage(
            'assets/img/gotica.jpg',
          ),
        ),
        TextoHistoria(
          textoRow:
              'A arte gótica foi uma expressão artística da Baixa Idade Média (século XII) que perdurou até o Renascimento. Denominada de arte das catedrais, ela era realizada nas cidades.',
          textoRow1:                                    
              'Muitos dos fiéis da época eram analfabetos, então a igreja buscava outras formas de transmitir as mensagens de Deus através das imagens de santos, cenas da vida de Jesus, entre outras figuras religiosas.',
          destaque:
              'As esculturas por exemplo, as gárgulas são características da arte gótica. E vitrais de igrejas.',
        ),
      ],
    );
  }
}