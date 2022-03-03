import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/historias.dart';
import 'package:projetoartemobile/inicio/principal.dart';
import 'package:projetoartemobile/inicio/widgets/texto-menu.dart';
import 'package:projetoartemobile/jogo/tela-jogo.dart';
import 'package:projetoartemobile/login/login.dart';

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
            padding: EdgeInsets.only(top: 576),
            child: Image(
              image: AssetImage('assets/img/picasso.png'),
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Principal(),
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
            padding: const EdgeInsets.all(30),
            child: Center(
                child: Container(
                   height: MediaQuery.of(context).size.height/ 1.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CarouselDemo(),
                          ),
                        ),
                        child: Container(
                          height: 50,
                          width: 300,
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
                            'Navega historias das artes por ano',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
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
                          width: 300,
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
                            'Jogo de perguntas',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        ),
                        child: Container(
                          height: 50,
                          width: 300,
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
                            'Sair',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            
          ),
        ],
      ),
    );
  }
}
