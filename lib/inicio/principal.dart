import 'package:flutter/material.dart';
import 'package:projetoartemobile/inicio/menu.dart';
import 'package:projetoartemobile/inicio/widgets/titulo-texto.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Menu(),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 30, left: 300),
                          child: Image(
                            height: 50.0,
                            image: AssetImage('assets/img/menu.png'),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: TextoPrincipal(
                          titulo: 'Por que a arte?',
                          tituloTransparente: 'Por que a arte?',
                          texto:
                              'Arte é a expressão de um ideal estético (ou seja, de um ideal de beleza) através de uma atividade criadora. É uma manifestação humana universal (existe em todas as culturas) que produz coisas reconhecidas como belas pela sociedade. Uma obra de arte transmite uma ideia, um sentimento, uma crença ou uma emoção. Mas a arte também pode ter finalidade transgressora, expondo ao mundo uma visão crítica e nem sempre agradável da realidade.',
                        ),
                      ),
                      const SizedBox(
                        child: Image(
                          image:
                              AssetImage('assets/img/david-michelangelo.png'),
                        ),
                      ),
                      const TextoPrincipal(
                        titulo: 'Visão',
                        tituloTransparente: 'Visão',
                        texto:
                            'Meio de comunicação entre as pessoas e os povos. nos dá subsídios para compreender melhor a vida e nos proporciona a união da nossa racionalidade com a nossa emoção. Por isso é tão particular e subjetiva. E por esse motivo é tão importante e nos faz tão bem! O artista consegue ver aquilo que as outras pessoas não veem, ele cria o que está além do nosso cotidiano, torna intensa a nossa sensibilidade e ainda tem a capacidade de promover uma visão crítica sobre um determinado tema',
                      ),
                      const SizedBox(
                        child: Image(
                          image:
                              AssetImage('assets/img/david-michelangelo-1.png'),
                        ),
                      ),
                      const TextoPrincipal(
                        titulo: 'Importancia',
                        tituloTransparente: 'Importancia',
                        texto:
                            'Para os povos primitivos, a arte, a religião e a ciência andavam juntas na figura e, originalmente, a arte poderia ser entendida como o produto ou processo em que o conhecimento é usado para realizar determinadas habilidades. A arte é um reflexo do ser humano e muitas vezes representa a sua condição social e essência de ser pensante.',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 15.0,
                    width: MediaQuery.of(context).size.width / 0.1,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(232, 232, 232, 1),
                    ),
                    child: const Text(
                      'by: Hanna Santos',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
