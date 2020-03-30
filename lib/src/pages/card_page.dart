import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(      
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Sou um titulo dessa Tarja'),
            subtitle: Text(
                'Aqui estamos com a descrição da tarja que quero mostrar para que todos vejam os lindos cards'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'), 
                textColor: Colors.blue,
                onPressed: (){},               
              ),

              FlatButton(
                child: Text('Ok'), 
                textColor: Colors.blue,
                onPressed: (){},               
               )

            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2(){

    final card = Container(
      
      child: Column(
        children: <Widget>[
           FadeInImage(
             image: NetworkImage('https://i.pinimg.com/originals/2e/bc/e1/2ebce10d8400993c935c77b598da1e30.jpg'),
             placeholder: AssetImage('assets/original.gif'),
             fadeInDuration: Duration(milliseconds: 200),
             height: 300.0,
             fit: BoxFit.cover,
           ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Aurora Boreal - Finlandia')
          ) 
        ],
      ),
    );    

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
       // color: Colors.red
      ),
    );
  }




}

