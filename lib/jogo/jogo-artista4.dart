import 'package:flutter/material.dart';
import 'package:projetoartemobile/jogo/tela-resultadoArtista.dart';
import 'package:projetoartemobile/jogo/widgets/imagens-jogo.dart';
import 'package:projetoartemobile/jogo/widgets/texto-perguntas.dart';
import 'package:projetoartemobile/jogo/widgets/texto-resposta.dart';

class JogoArtista4 extends StatefulWidget {
  const JogoArtista4({ Key? key }) : super(key: key);

  @override
  _JogoArtista4State createState() => _JogoArtista4State();
}

class _JogoArtista4State extends State<JogoArtista4> {
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
                urlImg: 'assets/img/michel.jpg',
                nomeObra: 'Nascimento de VênusS',
              ),
              const TextoPerguntas(
                textoPergunta:
                    'Essa obra pertence a qual Artista?',
              ),
              TextoResposta(
                perguntaA: 'A. Paul Cézanne',
                perguntaB: 'B. Pablo Picasso',
                perguntaC: 'C. Michelangelo',
                perguntaD: 'D. Di Cavalcanti',
                resposta: 3,
                erro1: 1,
                erro2: 2,
                erro3: 4,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaResultadoArtista(),
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