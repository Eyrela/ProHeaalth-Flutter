import 'package:flutter/material.dart';


class AddPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AddPage> {
  
   String _medicamento;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Medicamento'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
        children: <Widget>[
          _crearAdd(),
          Divider(),
          _crearMedicamento(),
        ],
      ),
    );
  }

  _crearAdd() {

    //var color;
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
       //counter: Text('Letras ${ _medicamento.length }'),
        hintText: 'Nombre del medicamento',
        labelText: 'Medicamento',
      //  fillColor: (color.Colors.grey),
        suffixIcon: Icon(Icons.event_busy, color: Colors.grey,),
        icon: Icon(Icons.exit_to_app, color: Colors.grey,)
      ),
      onChanged: (valor){
        setState(() {
          _medicamento = valor;
        });
      },
    );
  }







  Widget _crearMedicamento(){

    return ListTile(
      title: Text ('El medicamento es: $_medicamento'),
    );
  }
}