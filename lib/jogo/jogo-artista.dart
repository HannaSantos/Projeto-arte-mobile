import 'package:flutter/material.dart';
import 'package:projetoartemobile/jogo/jogo-artista2.dart';
import 'package:projetoartemobile/jogo/widgets/imagens-jogo.dart';
import 'package:projetoartemobile/jogo/widgets/texto-perguntas.dart';
import 'package:projetoartemobile/jogo/widgets/texto-resposta.dart';

class JogoArtista1 extends StatefulWidget {
  const JogoArtista1({ Key? key }) : super(key: key);

  @override
  _JogoArtistaState createState() => _JogoArtistaState();
}

class _JogoArtistaState extends State<JogoArtista1> {
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
                urlImg: 'assets/img/vincent.jpeg',
                nomeObra: 'Irises (Lírios)',
              ),
              const TextoPerguntas(
                textoPergunta:
                    'Essa obra pertence a qual Artista?',
              ),
              TextoResposta(
                perguntaA: 'A. Frida Kahlo',
                perguntaB: 'B. Vincent\n van Gogh',
                perguntaC: 'C. Rembrandt',
                perguntaD: 'D. Di Cavalcanti',
                resposta: 2,
                erro1: 1,
                erro2: 3,
                erro3: 4,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JogoArtista2(),
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