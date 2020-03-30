import 'package:flutter/services.dart' show  rootBundle;
import 'dart:convert';


class _MenuProvider{
  List<dynamic> opcoes = [];  

  _MenuProvider(){
    //cargarData();
  }
    
      Future<List<dynamic>> cargarData() async{

       final resp = await rootBundle.loadString('data/menu_opts.json');
       
          Map dataMap = json.decode(resp);
          print(dataMap['rotas']);
          opcoes = dataMap['rotas'];


          return opcoes;

      }
}

final menuProvider = new _MenuProvider();