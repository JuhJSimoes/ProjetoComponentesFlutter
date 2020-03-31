import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloqCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _criarSlider(),
            _checkBox(),
            _criarSwitch(),
            Expanded(child: _criarImagem()),
          ],
        ),
      ),
    );
  }

  Widget _criarSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamanho da imagem',
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (_bloqCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _checkBox() {
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _bloqCheck,
        onChanged: (valor) {
          setState(() {
            _bloqCheck = valor;
          });
        });
  }

  Widget _criarSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _bloqCheck,
        onChanged: (valor) {
          setState(() {
            _bloqCheck = valor;
          });
        });
  }

  Widget _criarImagem() {
    return Image(
      image: NetworkImage(
          'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F28%2F2019%2F07%2Fvancouver-canada-02-CACITIESWB19.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
