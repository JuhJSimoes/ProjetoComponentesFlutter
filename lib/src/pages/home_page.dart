import 'package:flutter/material.dart';
import 'package:projetocomponentesflutter/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _lista(),
    );
  }

  Widget _lista() {

    print( menuProvider.opcoes);
    return ListView(children: _listaItems());
  }

  List<Widget>_listaItems() {

    return[
      ListTile(title: Text('Ola')),
      Divider(),
      ListTile(title: Text('Ola')),
      Divider(),
      ListTile(title: Text('Ola')),
      
    ];
  }
}
