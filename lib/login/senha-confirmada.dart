import 'package:flutter/material.dart';
import 'package:projetoartemobile/login/login.dart';
import 'package:projetoartemobile/login/widgets/custom_container.dart';
import 'package:projetoartemobile/login/widgets/input.dart';
import '../inicio/principal.dart';

class EsqueceuSenhaConfirmada extends StatefulWidget {
  const EsqueceuSenhaConfirmada({Key? key}) : super(key: key);

  @override
  _EsqueceuSenhaConfirmadaPageState createState() => _EsqueceuSenhaConfirmadaPageState();
}

class _EsqueceuSenhaConfirmadaPageState extends State<EsqueceuSenhaConfirmada> {
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
                    text: 'Nova Senha',
                  ),
                  const Inputs(
                    text: 'Confirma Senha',
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
                                  builder: (context) => const LoginPage(),
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
                                      'Ok',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:
                                        Color(0xDEECCC9B),
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
