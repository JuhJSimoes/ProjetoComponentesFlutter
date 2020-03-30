import 'dart:math';

import 'package:flutter/material.dart';

class AnimationContainerPage extends StatefulWidget {
  @override
  _AnimationContainerPage createState() => _AnimationContainerPage();
}

class _AnimationContainerPage extends State<AnimationContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOutSine,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _alterarForma,
      ),
    );
  }

  void _alterarForma() {

    final random = Random();

    setState(() {
      _width  = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255), 
        random.nextInt(255), 
        random.nextInt(255), 
        1);

        _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
