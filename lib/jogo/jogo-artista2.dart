import 'package:flutter/material.dart';
import 'package:projetoartemobile/jogo/jogo-artista3.dart';
import 'package:projetoartemobile/jogo/widgets/imagens-jogo.dart';
import 'package:projetoartemobile/jogo/widgets/texto-perguntas.dart';
import 'package:projetoartemobile/jogo/widgets/texto-resposta.dart';

class JogoArtista2 extends StatefulWidget {
  const JogoArtista2({ Key? key }) : super(key: key);

  @override
  _JogoArtista2State createState() => _JogoArtista2State();
}

class _JogoArtista2State extends State<JogoArtista2> {
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
                urlImg: 'assets/img/dali.jpg',
                nomeObra: 'A persistência da memória',
              ),
              const TextoPerguntas(
                textoPergunta:
                    'Essa obra pertence a qual Artista?',
              ),
              TextoResposta(
                perguntaA: 'A. Pablo Picasso',
                perguntaB: 'B. Paul Cézanne',
                perguntaC: 'C. Roy Lichtenstein',
                perguntaD: 'D. Salvador Dalí',
                resposta: 4,
                erro1: 1,
                erro2: 3,
                erro3: 2,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JogoArtista3(),
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