import 'package:flutter/material.dart';
import 'package:projetoartemobile/jogo/tela-resultado.dart';
import 'package:projetoartemobile/jogo/widgets/imagens-jogo.dart';
import 'package:projetoartemobile/jogo/widgets/texto-perguntas.dart';
import 'package:projetoartemobile/jogo/widgets/texto-resposta.dart';

class JogoHistoria3 extends StatelessWidget {
  const JogoHistoria3({Key? key}) : super(key: key);

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
                urlImg: 'assets/img/cristo.png',
                nomeObra: 'Paul Landowski - Cristo Redentor',
              ),
              const TextoPerguntas(
                textoPergunta:
                    'Qual o estilo de design que teve origem na Europa e teve seu apogeu nas décadas de 1920 e 1930. Dentre suas principais características, destacamos os contornos ousados e estilizados, as formas geométricas e em zigue-zague e utilização de novos materiais (como o plástico). O Cristo Redentor no Rio de Janeiro é um exemplo de escultura que segue esse estilo.',
              ),
              TextoResposta(
                perguntaA: 'A. Pop Art.',
                perguntaB: 'B. Op Art.',
                perguntaC: 'C. Art Déco.',
                perguntaD: 'D. Arte pompier.',
                resposta: 3,
                erro1: 1,
                erro2: 2,
                erro3: 4,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaResultado(),
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
