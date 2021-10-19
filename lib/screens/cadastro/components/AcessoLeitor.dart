import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/constant.dart';
// ignore: unused_import

class AcessoLeitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/Leitores');
            },
            child: Text(
              '  Cadastre agora um novo leitor                           >>',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              '    Acesse os leitores cadastrados                           >>',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.only(top: 230, right: 300),
      height: 500,
      width: 1000,
      decoration: BoxDecoration(
        color: Color(0xFF24386e),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Colors.blueAccent),
      ),
    );
  }
}
