import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nome = '';
  String _email = '';
  String _data = '';

  String _opcaoSelecionada = 'Voar';

  List<String> _poderes = ['Voar', 'Raio - X', 'Super Sopro', 'Super Força'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs o texto')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _criarInput(),
          Divider(),
          _criarEmail(),
          Divider(),
          _criarPassword(),
          Divider(),
          _criarData(context),
          Divider(),
          _criarDropDown(),
          Divider(),
          _criarPersona(),
        ],
      ),
    );
  }

  Widget _criarInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('Letras ${_nome.length}'),
        hintText: 'Nome da pessoa',
        labelText: 'Nome',
        helperText: 'Informe seu nome',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        setState(() {
          _nome = valor;
        });
      },
    );
  }

  Widget _criarEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Email da pessoa',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
        ),
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }

  Widget _criarPassword() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock),
        ),
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }

  Widget _criarData(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Data de nascimento',
        labelText: 'Data de nascimento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1987),
      lastDate: new DateTime(2021),
      locale: Locale('pt', 'PT'),
    );

    if (picked != null) {
      setState(() {
        _data = picked.toString();
        _inputFieldDateController.text = _data;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcoesDropDown() {
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _criarDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        Expanded(
            child: DropdownButton(
            value: _opcaoSelecionada,
            items: getOpcoesDropDown(),
            onChanged: (opt) {
              setState(() {
                _opcaoSelecionada = opt;
              });
            },
          ),
        )
      ],
    );
  }





  Widget _criarPersona() {
    return ListTile(
      title: Text('Nome é: $_nome'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_opcaoSelecionada),
    );
  }
}
