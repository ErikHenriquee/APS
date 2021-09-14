import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int content = 0;

  get child => null;

  get children => null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() => Center(
        child: Card(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.55,
            height: MediaQuery.of(context).size.height * 1,
            color: Colors.white,    
            child: Column(
              children: <Widget>[
                Image.asset('foto.png'),
                Align(
                  alignment: Alignment(-0.92, 0),
                  child: Text('Nome: Erik Henrique Araujo de Oliveira ', style: TextStyle(color: Colors.black, fontSize: 25),),
                ),
                Align(
                  alignment: Alignment(-0.91, 0),
                  child: Text('Endereço: Rua: João Belo Nº 431, Vazante - MG', style: TextStyle(color: Colors.black, fontSize: 25),),
                ),
                Align(
                  alignment: Alignment(-0.92, 0),
                  child: Text('E-mail: erickhenrique110410@gmail.com', style: TextStyle(color: Colors.black, fontSize: 25),),
                ),
                Align(
                  alignment: Alignment(-0.94, 0),
                  child: Text('Telefone: (34) 996706240 \n', style: TextStyle(color: Colors.black, fontSize: 25),),
                ),
                Divider(color: Colors.black,indent: 30,endIndent: 30,),
                Align(
                  alignment: Alignment(-0.94, 0),
                  child: Text('Objetivo \n', style: TextStyle(color: Colors.black, fontSize: 30),),
                ),
                Align(
                  alignment: Alignment(-0.70, 0),
                  child: Text('Minha carreira está no início, mas estou em busca de uma oportunidade para \ndemonstrar meu talento e minhas habilidades. Acredito que possa compensar \na falta de experiência com dedicação e empenho.\n', style: TextStyle(color: Colors.black, fontSize: 25, ),),
                ),
                Divider(color: Colors.black,indent: 30,endIndent: 30,),
                Align(
                  alignment: Alignment(-0.94, 0),
                  child: Text('Formação \n', style: TextStyle(color: Colors.black, fontSize: 30),),
                ),
                Align(
                  alignment: Alignment(-0.8, 0),
                  child: Text('- Cursando o 4º Périodo de Sistemas de informação - Unipam - 2020/\n', style: TextStyle(color: Colors.black, fontSize: 25),),
                ),
                Divider(color: Colors.black,indent: 30,endIndent: 30,),
                Align(
                  alignment: Alignment(-0.94, 0),
                  child: Text('Qualificações \n', style: TextStyle(color: Colors.black, fontSize: 30),),
                ),
                Align(
                  alignment: Alignment(-0.86, 0),
                  child: Text('- Programação Web e Mobile com react e Firebase DB\n', style: TextStyle(color: Colors.black, fontSize: 25),),
                ),
                Divider(color: Colors.black,indent: 30,endIndent: 30,),
                  Align(
                  alignment: Alignment(-0.94, 0),
                  child: Text('Idiomas \n', style: TextStyle(color: Colors.black, fontSize: 30),),
                ),
                  Align(
                  alignment: Alignment(-0.92, 0),
                  child: Text('- Português fluente \n- Espanhol básico \n- Inglês intermédiario\n', style: TextStyle(color: Colors.black, fontSize: 25)),
                ),
              ],
            ),
          ),
      ),
  );    
}
