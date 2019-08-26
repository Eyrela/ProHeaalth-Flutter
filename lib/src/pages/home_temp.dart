import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Agregar Medicina', 'Receta medica', 'Receta cita medica', 'Configuracion', 'Ayuda'];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProHealth'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItemsCorta() {

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text( opt ),
        subtitle: Text(''),
        leading: Icon( Icons.assignment),
        onTap: () {},
      );

      lista..add( tempWidget )
          ..add(Divider());
    
    }

    return lista;   
 
  }

    List<Widget> crearItemsCorta() {

    return opciones.map( ( item ){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item + '!'), 
            subtitle: Text('Hola'),
            leading: Icon( Icons.assignment),
        //    trailing: Icon( Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Divider()
        ],
        );
        
    }).toList();
    
  }
} 