import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Componentes"),
        ),
        body: ListView(children: _crearItemsCorta()));
  }

  // Two ways to do the same thing... return a list of ListTile
  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (var opt in opciones) {
  //     final tempWidget = ListTile(title: Text(opt));

  //     lista..add(tempWidget)..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text("Cualquier cosa"),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
