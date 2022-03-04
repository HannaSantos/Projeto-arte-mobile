import 'package:flutter/material.dart';
import 'package:projetoartemobile/login/senha-confirmada.dart';
import 'package:projetoartemobile/login/widgets/custom_container.dart';
import 'package:projetoartemobile/login/widgets/input.dart';


class EsqueceuSenha extends StatefulWidget {
  const EsqueceuSenha({Key? key}) : super(key: key);

  @override
  _EsqueceuSenhaPageState createState() => _EsqueceuSenhaPageState();
}

class _EsqueceuSenhaPageState extends State<EsqueceuSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/girl-with-pearl.jpg'),
            fit: BoxFit.scaleDown,
            alignment: Alignment(0, 0.8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Padding(
              padding: EdgeInsets.zero,
              child: CustomContainer(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  const Text(
                    'Recupere sua senha',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  const Inputs(
                    text: 'E-mail',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EsqueceuSenhaConfirmada(),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.8),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 15,
                                  width: MediaQuery.of(context).size.width / 4,
                                  child: const Center(
                                    child: Text(
                                      'Enviar',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:
                                        const Color(0xDEECCC9B),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
