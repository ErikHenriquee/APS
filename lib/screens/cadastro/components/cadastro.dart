import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(),
      margin: const EdgeInsets.only(top: 230),
      height: 500,
      width: 875,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/leitor2.png'),
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Colors.blueAccent)),
    );
  }
}
