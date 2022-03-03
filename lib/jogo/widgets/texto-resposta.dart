import 'package:flutter/material.dart';
import 'package:projetoartemobile/data/pontucao.dart';

class TextoResposta extends StatefulWidget {
  TextoResposta({
    Key? key,
    required this.perguntaA,
    required this.perguntaB,
    required this.perguntaC,
    required this.perguntaD,
    required this.resposta,
    required this.erro1,
    required this.erro2,
    required this.erro3,
  }) : super(key: key);

  final String perguntaA;
  final String perguntaB;
  final String perguntaC;
  final String perguntaD;

  final int resposta;
  final int erro1;
  final int erro2;
  final int erro3;

  @override
  State<TextoResposta> createState() => _TextoRespostaState();
}

class _TextoRespostaState extends State<TextoResposta> {
  int? respostaSelecionada;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      Pontuacao.valor = 1 == widget.resposta
                          ? Pontuacao.valor + 1
                          : Pontuacao.valor;

                      PontuacaoErro.valorErro = 1 == widget.erro1
                          ? PontuacaoErro.valorErro + 1
                          : PontuacaoErro.valorErro;

                      PontuacaoErro.valorErro = 1 == widget.erro2
                          ? PontuacaoErro.valorErro + 1
                          : PontuacaoErro.valorErro;

                      PontuacaoErro.valorErro = 1 == widget.erro3
                          ? PontuacaoErro.valorErro + 1
                          : PontuacaoErro.valorErro;
                      respostaSelecionada = 1;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 160,
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      color: respostaSelecionada != null
                          ? widget.resposta == 1
                              ? const Color.fromARGB(45, 76, 175, 79)
                              : const Color.fromARGB(36, 244, 67, 54)
                          : const Color.fromARGB(40, 255, 255, 255),
                      border: Border.all(
                        color: respostaSelecionada != null
                            ? widget.resposta == 1
                                ? const Color.fromARGB(123, 76, 175, 79)
                                : const Color.fromARGB(111, 244, 67, 54)
                            : const Color.fromARGB(111, 255, 255, 255),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      widget.perguntaA,
                      style: TextStyle(
                        fontSize: 17,
                        color: respostaSelecionada != null
                            ? widget.resposta == 1
                                ? Colors.green
                                : Colors.red
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Pontuacao.valor = 2 == widget.resposta
                          ? Pontuacao.valor + 1
                          : Pontuacao.valor;

                      PontuacaoErro.valorErro = 2 == widget.erro1
                          ? PontuacaoErro.valorErro + 1
                          : PontuacaoErro.valorErro;

                      PontuacaoErro.valorErro = 2 == widget.erro2
                          ? PontuacaoErro.valorErro + 1
                          : PontuacaoErro.valorErro;

                      PontuacaoErro.valorErro = 2 == widget.erro3
                          ? PontuacaoErro.valorErro + 1
                          : PontuacaoErro.valorErro;
                      respostaSelecionada = 2;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 160,
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      color: respostaSelecionada != null
                          ? widget.resposta == 2
                              ? const Color.fromARGB(36, 76, 175, 79)
                              : const Color.fromARGB(36, 244, 67, 54)
                          : const Color.fromARGB(41, 255, 255, 255),
                      border: Border.all(
                        color: respostaSelecionada != null
                            ? widget.resposta == 2
                                ? const Color.fromARGB(110, 76, 175, 79)
                                : const Color.fromARGB(111, 244, 67, 54)
                            : const Color.fromARGB(111, 255, 255, 255),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      widget.perguntaB,
                      style: TextStyle(
                        fontSize: 17,
                        color: respostaSelecionada != null
                            ? widget.resposta == 2
                                ? Colors.green
                                : Colors.red
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    Pontuacao.valor = 3 == widget.resposta
                        ? Pontuacao.valor + 1
                        : Pontuacao.valor;

                    PontuacaoErro.valorErro = 3 == widget.erro1
                        ? PontuacaoErro.valorErro + 1
                        : PontuacaoErro.valorErro;

                    PontuacaoErro.valorErro = 3 == widget.erro2
                        ? PontuacaoErro.valorErro + 1
                        : PontuacaoErro.valorErro;

                    PontuacaoErro.valorErro = 3 == widget.erro3
                        ? PontuacaoErro.valorErro + 1
                        : PontuacaoErro.valorErro;
                    respostaSelecionada = 3;
                  });
                },
                child: Container(
                  height: 50,
                  width: 160,
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                    color: respostaSelecionada != null
                        ? widget.resposta == 3
                            ? const Color.fromARGB(36, 76, 175, 79)
                            : const Color.fromARGB(36, 244, 67, 54)
                        : const Color.fromARGB(40, 255, 255, 255),
                    border: Border.all(
                      color: respostaSelecionada != null
                          ? widget.resposta == 3
                              ? const Color.fromARGB(110, 76, 175, 79)
                              : const Color.fromARGB(111, 244, 67, 54)
                          : const Color.fromARGB(111, 255, 255, 255),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    widget.perguntaC,
                    style: TextStyle(
                      fontSize: 17,
                      color: respostaSelecionada != null
                          ? widget.resposta == 3
                              ? Colors.green
                              : Colors.red
                          : Colors.white,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Pontuacao.valor = 4 == widget.resposta
                        ? Pontuacao.valor + 1
                        : Pontuacao.valor;

                    PontuacaoErro.valorErro = 4 == widget.erro1
                        ? PontuacaoErro.valorErro + 1
                        : PontuacaoErro.valorErro;

                    PontuacaoErro.valorErro = 4 == widget.erro2
                        ? PontuacaoErro.valorErro + 1
                        : PontuacaoErro.valorErro;

                    PontuacaoErro.valorErro = 4 == widget.erro3
                        ? PontuacaoErro.valorErro + 1
                        : PontuacaoErro.valorErro;
                    respostaSelecionada = 4;
                  });
                },
                child: Container(
                  height: 50,
                  width: 160,
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                    color: respostaSelecionada != null
                        ? widget.resposta == 4
                            ? const Color.fromARGB(36, 76, 175, 79)
                            : const Color.fromARGB(36, 244, 67, 54)
                        : const Color.fromARGB(40, 255, 255, 255),
                    border: Border.all(
                      color: respostaSelecionada != null
                          ? widget.resposta == 4
                              ? const Color.fromARGB(110, 76, 175, 79)
                              : const Color.fromARGB(111, 244, 67, 54)
                          : const Color.fromARGB(111, 255, 255, 255),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    widget.perguntaD,
                    style: TextStyle(
                      fontSize: 17,
                      color: respostaSelecionada != null
                          ? widget.resposta == 4
                              ? Colors.green
                              : Colors.red
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BotaoResposta extends StatelessWidget {
  const BotaoResposta({Key? key, required this.resposta}) : super(key: key);

  final String resposta;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Text(
        resposta,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
