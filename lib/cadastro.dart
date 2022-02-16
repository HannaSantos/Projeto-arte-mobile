import 'package:flutter/material.dart';
import 'package:projetoartemobile/main.dart';


void main() {
  runApp(const Cadastro());
}

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/medusa-de-caravaggio.jpg'),
            fit: BoxFit.none,
            alignment: Alignment(1.4,1.1),
            scale: 2.6,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(111, 255, 255, 255),
                ),
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    const Text(
                      'Cadastro',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(226, 115, 111, 64),
                      ),
                      child: const TextField(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(
                              left: 20,
                              top: 15,
                              right: 20,
                              bottom: 15,
                            ),
                            hintText: 'E-mail',
                            border: InputBorder.none),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(226, 115, 111, 64),
                      ),
                      child: const TextField(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(
                              left: 20,
                              top: 15,
                              right: 20,
                              bottom: 15,
                            ),
                            hintText: 'Senha',
                            border: InputBorder.none),
                      ),
                    ),
                    
                     const Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(226, 115, 111, 64),
                      ),
                      child: const TextField(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(
                              left: 20,
                              top: 15,
                              right: 20,
                              bottom: 15,
                            ),
                            hintText: 'Confirmar senha',
                            border: InputBorder.none),
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
                                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const ProjetoArte())),
                                child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 25,
                                  width:
                                      MediaQuery.of(context).size.width / 4,
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
                                    color: Color.fromARGB(255, 89, 83, 54),
                                  ),
                                ),
                              )
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
      ),
    );
  }
}
