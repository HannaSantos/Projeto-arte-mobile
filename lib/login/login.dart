import 'package:flutter/material.dart';
import 'package:projetoartemobile/login/widgets/custom_container.dart';
import 'package:projetoartemobile/login/widgets/input.dart';
import 'cadastro.dart';
import 'esqueceusenha.dart';
import '../inicio/principal.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/nascimento-venus.jpg'),
            fit: BoxFit.none,
            alignment: Alignment(1.3, 1),
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
                      'Login',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    const Inputs(
                      text: 'E-mail',
                    ),
                    const Inputs(
                      text: 'Senha',
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EsqueceuSenha(),
                        ),
                      ),
                      child: const Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(
                            color: Color.fromARGB(222, 207, 147, 00),
                            fontSize: 15),
                      ),
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
                                        builder: (context) =>
                                            const Principal())),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.8),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 15,
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: const Center(
                                      child: Text(
                                        'Logar',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(222, 207, 147, 40),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                  onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Cadastro(),
                                        ),
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              15,
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      child: const Center(
                                        child: Text(
                                          'Cadastrar',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromARGB(222, 207, 147, 40),
                                      ),
                                    ),
                                  )),
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
