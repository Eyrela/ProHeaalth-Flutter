import 'package:flutter/material.dart';


class  ConfigurationPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Configuraciòn'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        children: <Widget>[
          _configurationTipo1(),
          SizedBox(height: 10.0),
          _configurationTipo2(),
            SizedBox(height: 10.0),
          _configurationTipo3(),

        ],
      ),
     
    );

  }

 Widget _configurationTipo1() {

   return Card(
     child: Column(
       children: <Widget>[
         ListTile(
           //leading: Icon( Icons.person, color: Colors.grey),
           title: Text('Configuracion Personal'),
           subtitle: Text('Administrar la informaciòn sobre ti, los pagos, cita y examenes mèdocos'),
         ),

         Column(
           children: <Widget>[
               ListTile(
            title: Text('Informacion Personal'), 
            subtitle: Text('Actualiza tu nombre, numero de telefono, direccion y correo electronico'),
            leading: Icon( Icons.person),
            onTap: () {},
          ),
          Divider()
        ],
        ),

        Column(
           children: <Widget>[
               ListTile(
            title: Text('Pago'), 
            subtitle: Text('Administrar la configuraciony consultas del historial de pago'),
            leading: Icon( Icons.payment),
            onTap: () {

            },
          ),
        ],
        ),
       ],
     )
   );
 }

  _configurationTipo2() {
     return Card(
     child: Column(
       children: <Widget>[
         ListTile(
           title: Text('Historial'),
           subtitle: Text('Contrala el historial de tus citas, examenes medicos y la ingesta de tu medicamento'),
         ),
        ],
        ),
     );
   

  }

  _configurationTipo3() {
     return Card(
     child: Column(
       children: <Widget>[
         ListTile(
           title: Text('Notificaciones'),
           subtitle: Text('elige que notificaciones quieres recibir'),
         ),

         Column(
           children: <Widget>[
               ListTile(
            title: Text('Mensaje de texto'), 
            subtitle: Text('Edita la preferencia para enviar y recibir mensaje de texto'),
            leading: Icon( Icons.message),
            onTap: () {},
          ),
          Divider()
        ],
        ),

        Column(
           children: <Widget>[
               ListTile(
            title: Text('Correo electronico'), 
            subtitle: Text('Administra las notificaciones por correo electronicos'),
            leading: Icon( Icons.email),
            onTap: () {},
          ),
        ],
        ),
       ],
     )
   );
  }

 
}