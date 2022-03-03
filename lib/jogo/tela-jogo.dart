import 'package:flutter/material.dart';
import 'package:projetoartemobile/inicio/principal.dart';
import 'package:projetoartemobile/jogo/jogo-artista.dart';
import 'package:projetoartemobile/jogo/jogo-historia.dart';

class TipoJogo extends StatelessWidget {
  const TipoJogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 500,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    foregroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/img/desespero.jpg'),
                    radius: 60.0,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JogoHistoria1(),
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
                        'Historia da arte',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    foregroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/img/frida.jpg'),
                    radius: 60.0,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JogoArtista1(),
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
                        'Artistas',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  
                ],
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Principal(),
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
      ),
    );
  }
}
