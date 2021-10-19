// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cadastro/components/cadastro.dart';

class Leitores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/leitor3.png'),
          fit: BoxFit.contain,
          alignment: (Alignment.bottomCenter),
        ),
      ),
      child: Column(
        children: <Widget>[
          AppBar(
            backgroundColor: Color(0xFF24386e),
            title: Text(
              "Faça o cadastro de um novo leitor.",
            ),
          ),
          Cadastro(),
        ],
      ),
    );
  }
}
