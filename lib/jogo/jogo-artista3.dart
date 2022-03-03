import 'package:flutter/material.dart';
import 'package:projetoartemobile/jogo/jogo-artista4.dart';
import 'package:projetoartemobile/jogo/widgets/imagens-jogo.dart';
import 'package:projetoartemobile/jogo/widgets/texto-perguntas.dart';
import 'package:projetoartemobile/jogo/widgets/texto-resposta.dart';

class JogoArtista3 extends StatefulWidget {
  const JogoArtista3({ Key? key }) : super(key: key);

  @override
  _JogoArtista3State createState() => _JogoArtista3State();
}

class _JogoArtista3State extends State<JogoArtista3> {
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
                urlImg: 'assets/img/leonardo.jpeg',
                nomeObra: 'Criação de Adão',
              ),
              const TextoPerguntas(
                textoPergunta:
                    'Essa obra pertence a qual Artista?',
              ),
              TextoResposta(
                perguntaA: 'A. Leonardo\n da Vinci',
                perguntaB: 'B. Frida Kahlo',
                perguntaC: 'C. Almeida Júnior',
                perguntaD: 'D. Tarsila\n do Amaral',
                resposta: 1,
                erro1: 2,
                erro2: 3,
                erro3: 4,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JogoArtista4(),
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