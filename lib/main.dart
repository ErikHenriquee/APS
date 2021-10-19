import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
// ignore: unused_import
import 'package:flutter_application_1/screens/cadastro/components/cadastro.dart';
// ignore: unused_import
import 'package:flutter_application_1/screens/cadastro/leitores.dart';
// ignore: duplicate_import
import 'package:flutter_application_1/screens/cadastro/leitoresCadastro.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: kPrimaryColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CadastroTela(),
        '/Leitores': (context) => DataTableDemo(),
      },
    );
  }
}
