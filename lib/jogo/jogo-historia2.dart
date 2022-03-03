import 'package:flutter/material.dart';
import 'package:projetoartemobile/jogo/widgets/imagens-jogo.dart';
import 'package:projetoartemobile/jogo/widgets/texto-perguntas.dart';
import 'package:projetoartemobile/jogo/widgets/texto-resposta.dart';
import 'jogo-historia3.dart';

class JogoHistoria2 extends StatelessWidget {
  const JogoHistoria2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ImagensJogos(
                urlImg: 'assets/img/arq-gotica.jpg',
                nomeObra: 'Artista desconhecido - vitrais de catedral',
              ),
              const TextoPerguntas(
                textoPergunta:
                    'No que se refere à arte gótica, analise os itens a seguir e, ao final, assinale a alternativa correta:\n I – Está relacionado com a construção das grandes catedrais da Europa ocidental, como a Catedral de Colônia (Alemanha), por exemplo. \n II – A pintura gótica surgiu depois das catedrais e esculturas.\n III – Pode-se identificar duas fases no movimento gótico.',
              ),
              TextoResposta(
                perguntaA: 'A. Item I é\n verdadeiro.',
                perguntaB: 'B. Item II é\n verdadeiro.',
                perguntaC: 'C. Item III é\n verdadeiro.',
                perguntaD: 'D. Item I e II é\n verdadeiros.',
                resposta: 4,
                erro1: 1,
                erro2: 2,
                erro3: 3,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JogoHistoria3(),
                  ),
                ),
                child: const BotaoResposta(
                  resposta: 'Verificar',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
