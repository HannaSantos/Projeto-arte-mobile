import 'package:flutter/material.dart';
import 'package:projetoartemobile/data/pontucao.dart';
import 'package:projetoartemobile/jogo/tela-jogo.dart';

class TelaResultadoArtista extends StatefulWidget {
  const TelaResultadoArtista({Key? key}) : super(key: key);

  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultadoArtista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const CircleAvatar(
              foregroundColor: Colors.black,
              backgroundImage: AssetImage('assets/img/frida.jpg'),
              radius: 60.0,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Text(
                          PontuacaoErro.valorErro.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        const Text(
                          'Erros',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Text(
                          Pontuacao.valor.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        const Text(
                          'Acertos',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TipoJogo(),
                ),
              ),
              child: Container(
                height: 50,
                width: 150,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Voltar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Pontuacao.valor.toString()