import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cadastro/components/AcessoLeitor.dart';

class CadastroTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/leitor0.png'),
          alignment: (Alignment.bottomCenter),
          fit: BoxFit.contain,
        ),
      ),
      child: Column(
        children: <Widget>[
          AppBar(
            backgroundColor: Color(0xFF24386e),
            title: Text(
              "Nesta página voce poderá pesquisar por todos os leitores cadastrados.",
            ),
          ),
          AcessoLeitor(),
        ],
      ),
    );
  }
}
