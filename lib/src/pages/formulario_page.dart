import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class FormularioPage extends StatefulWidget {
  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  String _nombre   = '';
  String _email    = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de usuario'),
      ),
      
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
        children: <Widget>[
          _crearFormulario(),
          Divider(),
          _crearNombre(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          _crearBoton(),
        
      ],
      
      ),
      
    );
  }

  _crearFormulario() {

    //var color;
    return TextFormField(
      
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
      //  counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Nombre de usuario',
        labelText: 'Nombre',
        suffixIcon: Icon(Icons.border_color, color: Colors.grey),
        //icon: Icon(Icons.exit_to_app, color: Colors.grey,)
      ),
        validator: _validateName,
    );
    
  }
   _validateName(String value){
  if(value.isEmpty){
    return 'Nombre no puede estar vacío';
 
  }
 }



  Widget _crearNombre(){

    return ListTile(
      title: Text ('El nombre es: $_nombre'),
      subtitle: Text('El correo es: $_email'),
    );
  }

  
 Widget _crearEmail() { 
   
    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Correo electronico',
        labelText: 'Email',
      //  fillColor: (color.Colors.grey),
        suffixIcon: Icon(Icons.account_circle, color: Colors.grey,),
        //icon: Icon(Icons.exit_to_app, color: Colors.grey,)
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }

  
 Widget _crearPassword() {
    return TextField(
      //autofocus: true,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Password',
        labelText: 'Password',
      //  fillColor: (color.Colors.grey),
        suffixIcon: Icon(Icons.lock_open, color: Colors.grey,),
        //icon: Icon(Icons.exit_to_app, color: Colors.grey,)
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  
  }

 Widget _crearBoton() {
   return Container(
     padding: const EdgeInsets.only(top: 32),
     child: RaisedButton(
       child: Text('Guardar'),
       onPressed: () {
          Navigator.pushNamed(context, 'home');
       },
     ),
   );

  }
   
  }

 