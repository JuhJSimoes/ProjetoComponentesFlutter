import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://images.kerrangcdn.com/CristinaScabbia-Promo-2019.jpg?auto=compress&fit=crop&w=1200'),
              radius: 23.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JJS'),
              backgroundColor: Colors.blue[200],
              
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://fsa.zobj.net/crop.php?r=TsoEnWW2nPZsSBayVhuuVnr13AwO0d1iSyhiFYA8xWk6Jsae285x55ShOKbmOLaWtgL9P4TTE4AWv7YMN7-kH9EmGDlwjM5tgbBqiyRkdr9ZGZGoc3GZdxOqXDYDuTKcdQ0ic7F_Ejn5afhz'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
