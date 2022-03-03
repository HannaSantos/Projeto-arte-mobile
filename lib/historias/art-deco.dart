import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/widgets/texto-historia.dart';

class Deco extends StatelessWidget {
  const Deco({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Image(
          image: AssetImage(
            'assets/img/artdeco.jpg',
          ),
        ),
        TextoHistoria(
          textoRow:
              'O Art Déco era um pastiche de muitos estilos diferentes, às vezes contraditórios, unidos pelo desejo de ser moderno. Representou a adaptação pela sociedade em geral dos princípios do Cubismo, do exotismo e do princípio da Obra de Arte Total herdado do Art Nouveau. ',
          textoRow1:
              'No início era de muitas cores, brilho e estampas florais. E com o passar do tempo o estilo foi se influênciando do cubismo, e passou a utilizar mais as formas geométricas. No final dos anos 20, com a aproximação da Grande Depressão, Art Decó foi ficando mais modesto e sem ornamentos.',
          destaque:
              '- Luxuosidade; - Uso de formas geométricas; - Design abstrato; - Emprego dos materiais: marfim, jade e laca; - Linhas retas e circulares estilizadas; - Temas comuns: animais e mulheres; - Presença marcante na Arquitetura;',
        ),
      ],
    );
  }
}