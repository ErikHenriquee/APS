import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cadastro/user.dart';

class DataTableDemo extends StatefulWidget {
  DataTableDemo() : super();

  final String title = "Faça o cadastro de um novo leitor.";

  @override
  DataTableDemoState createState() => DataTableDemoState();
}

class DataTableDemoState extends State<DataTableDemo> {
  late List<User> users;
  late List<User> selectedUsers;
  late bool sort;

  get children => null;

  @override
  void initState() {
    sort = false;
    selectedUsers = [];
    users = User.getUsers();
    super.initState();
  }

  onSortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        users.sort((a, b) => a.firstName.compareTo(b.firstName));
      } else {
        users.sort((a, b) => b.firstName.compareTo(a.firstName));
      }
    }
  }

  onSelectedRow(bool selected, User user) async {
    setState(() {
      if (selected) {
        selectedUsers.add(user);
      } else {
        selectedUsers.remove(user);
      }
    });
  }

  deleteSelected() async {
    setState(() {
      if (selectedUsers.isNotEmpty) {
        List<User> temp = [];
        temp.addAll(selectedUsers);
        for (User user in temp) {
          users.remove(user);
          selectedUsers.remove(user);
        }
      }
    });
  }

  SingleChildScrollView dataBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(230),
      child: DataTable(
        sortAscending: sort,
        sortColumnIndex: 0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          border: Border.all(color: Colors.blueAccent),
        ),
        columns: [
          DataColumn(
              label: Text(
                "PRIMEIRO NOME",
                style: TextStyle(fontSize: 15),
              ),
              numeric: false,
              tooltip: "This is First Name",
              onSort: (columnIndex, ascending) {
                setState(() {
                  sort = !sort;
                });
                onSortColum(columnIndex, ascending);
              }),
          DataColumn(
            label: Text(
              "ULTIMO NOME",
              style: TextStyle(fontSize: 15),
            ),
            numeric: false,
            tooltip: "This is Last Name",
          ),
          DataColumn(
            label: Text(
              "TIPO",
              style: TextStyle(fontSize: 15),
            ),
            numeric: false,
          ),
          DataColumn(
            label: Text(
              "CELULAR",
              style: TextStyle(fontSize: 15),
            ),
            numeric: true,
          ),
          DataColumn(
            label: Text(
              "DATA",
              style: TextStyle(fontSize: 15),
            ),
            numeric: true,
          ),
        ],
        rows: users
            .map(
              (user) => DataRow(
                selected: selectedUsers.contains(user),
                onSelectChanged: (b) {
                  print("Onselect");
                  onSelectedRow(b!, user);
                },
                cells: [
                  DataCell(
                    Text(
                      user.firstName,
                      style: TextStyle(fontSize: 15),
                    ),
                    onTap: () {
                      print('Selected ${user.firstName}');
                    },
                  ),
                  DataCell(
                    Text(
                      user.lastName,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  DataCell(
                    Text(
                      user.tipo,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  DataCell(
                    Text(
                      user.celular,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  DataCell(
                    Text(
                      user.data,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xFF24386e),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/leitor3.png'),
            alignment: (Alignment.bottomCenter),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: dataBody(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    'SELECIONADOS ${selectedUsers.length}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      height: 5,
                    ),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(
                    'DELETAR SELECIONADOS',
                    style: TextStyle(
                      fontSize: 20,
                      height: 5,
                    ),
                  ),
                  onPressed: selectedUsers.isEmpty
                      ? null
                      : () {
                          deleteSelected();
                        },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
