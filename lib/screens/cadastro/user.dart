import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cadastro/leitores.dart';

class User {
  String firstName;
  String lastName;
  String tipo;
  String celular;
  String data;

  User({
    required this.firstName,
    required this.lastName,
    required this.tipo,
    required this.celular,
    required this.data,
  });

  get lastname => null;

  static List<User> getUsers() {
    return <User>[
      User(
        firstName: "Aaryan",
        lastName: "Shah",
        tipo: "",
        celular: "94533315",
        data: "11/10",
      ),
      User(
        firstName: "Ben",
        lastName: "John",
        tipo: "",
        celular: "94533315",
        data: "11/10",
      ),
      User(
        firstName: "Carrie",
        lastName: "Brown",
        tipo: "",
        celular: "95271315",
        data: "11/10",
      ),
      User(
        firstName: "Deep",
        lastName: "Sen",
        tipo: "",
        celular: "97532315",
        data: "12/10",
      ),
      User(
        firstName: "Emily",
        lastName: "Jane",
        tipo: "",
        celular: "94752615",
        data: "12/10",
      ),
    ];
  }
}
