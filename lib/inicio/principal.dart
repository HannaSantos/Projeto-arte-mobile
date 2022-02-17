import 'package:flutter/material.dart';
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/img/david-michelangelo.png',
            ),
            fit: BoxFit.none,
            alignment: Alignment(
              5,
              0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: const TextoPrincipal(
                  titulo: 'Por que a arte?',
                  tituloTransparente: 'Por que a arte?',
                ),
              ),
              Container(
                child: const TextoPrincipal(
                  titulo: 'teste',
                  tituloTransparente: 'teste',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
