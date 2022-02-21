import 'package:flutter/material.dart';
import 'package:projetoartemobile/inicio/widgets/texto-menu.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 450),
            child: Image(
              image: AssetImage('assets/img/picasso.png'),
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Menu(),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 50, left: 300),
              child: Image(
                height: 50.0,
                image: AssetImage('assets/img/menu1.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  TextoMenu(
                    textoMenu: 'Navega historias das artes por ano',
                  ),
                  TextoMenu(
                    textoMenu: 'Jogo de perguntas',
                  ),
                  TextoMenu(
                    textoMenu: 'Sair',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}