import 'package:flutter/material.dart';
import 'package:projetoartemobile/login/login.dart';


void main() {
  runApp(const ProjetoArte());
}

class ProjetoArte extends StatelessWidget {
  const ProjetoArte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
