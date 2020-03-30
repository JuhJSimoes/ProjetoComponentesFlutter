import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opcoes = ['Um', 'Dois', 'Três', 'Quatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
          //children: _criarItens()
          children: _criarItensCurtos()),
    );
  }

  // List <Widget> _criarItens(){

  //   List<Widget> lista = new List<Widget>();

  //   for (String opt in opcoes) {

  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );

  //     lista..add(tempWidget)
  //          ..add(Divider());

  //   }
  //   return lista;
  // }

  List<Widget> _criarItensCurtos() {
    return opcoes.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Qualquer coisa'),
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
