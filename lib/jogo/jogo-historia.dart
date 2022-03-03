import 'package:flutter/material.dart';
import 'package:projetoartemobile/jogo/widgets/imagens-jogo.dart';
import 'package:projetoartemobile/jogo/widgets/texto-perguntas.dart';
import 'package:projetoartemobile/jogo/widgets/texto-resposta.dart';

import 'jogo-historia2.dart';

class JogoHistoria1 extends StatefulWidget {
  const JogoHistoria1({Key? key}) : super(key: key);

  @override
  State<JogoHistoria1> createState() => _JogoHistoria1State();
}

class _JogoHistoria1State extends State<JogoHistoria1> {
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
                urlImg: 'assets/img/monalisa.jpg',
                nomeObra: 'Leonardo da Vinci - Mona Lisa del Giocondo',
              ),
              const TextoPerguntas(
                textoPergunta:
                    'A obra retrata a figura de uma mulher com um sorriso tímido e uma expressão introspectiva, e foi feito em um dos movimentos artísticos mais importantes para a história. Assinale a alternativa que indica em qual movimento artístico o quadro "Mona Lisa" foi pintado:',
              ),
              TextoResposta(
                perguntaA: 'A. Surrealismo',
                perguntaB: 'B. Renascimento',
                perguntaC: 'C. Cubismo',
                perguntaD: 'D. Barroco',
                resposta: 2,
                erro1: 1,
                erro2: 3,
                erro3: 4,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JogoHistoria2(),
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
