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

    return FutureBuilder( 
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){

        return ListView(children: _listaItems(snapshot.data));
      },
    );

  }

    //print( menuProvider.opcoes);
    // menuProvider.cargarData().then((opcoes){

    //   print('_lista');
    //   print(opcoes);
    //return ListView(children: _listaItems());


  List<Widget>_listaItems(List<dynamic> data) {

   final List<Widget> opcoes = [];
   data.forEach((opt){
     
     final widgetTemp = ListTile(
       title: Text(opt['texto']),
       leading: Icon(Icons.account_circle, color: Colors.blue),
       trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
       onTap: (){

       },
     );

     opcoes..add(widgetTemp)
           ..add(Divider());
   });

   return opcoes;

  }
}
