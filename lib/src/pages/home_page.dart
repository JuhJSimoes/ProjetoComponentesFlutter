import 'package:flutter/material.dart';
import 'package:projetocomponentesflutter/src/providers/menu_provider.dart';
import 'package:projetocomponentesflutter/src/utils/icone_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

    final List<Widget> opcoes = [];
  
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['rota']);
        },
      );

      opcoes..add(widgetTemp)..add(Divider());
    });

    return opcoes;
  }
}
