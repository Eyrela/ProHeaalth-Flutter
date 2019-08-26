import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text('ProHealth')),
         body: ListView(
           padding: EdgeInsets.all(10.0),
           children: <Widget>[
              _cardiologia(), 
              SizedBox(height: 10.0,),
               _pidiatria(), 
              SizedBox(height: 10.0,),
               _ginecologia(), 
              SizedBox(height: 10.0,),
               _oftalmologia(), 
              SizedBox(height: 10.0,),
               ]
          

         ), 
          
         drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
               new UserAccountsDrawerHeader(
          accountName: new Text("Eyrela Perez"),
          accountEmail: new Text("sofiajimnez08@gmail.com"),
          currentAccountPicture: new GestureDetector(
            child: new CircleAvatar(
              backgroundImage: new AssetImage("assets/doctor.png") ,
            ),
          ),
          onDetailsPressed: () {},
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage("https://images.alphacoders.com/593/593321.jpg"
                )
                ),

              ),

             ),
            ListTile(
              title: Text('Agregar medicina'),
               leading: Icon( Icons.add_box),
               
              onTap: () {
               Navigator.of(context).pop();
               Navigator.pushNamed(context, 'add');
            },
            ),
             Divider(),

             ListTile(
              title: Text('Receta Cita Médica'),
               leading: Icon( Icons.assignment),
               
              onTap: () {
               Navigator.of(context).pop();
               Navigator.pushNamed(context, 'recipe');
            },
            ),
             Divider(),

             ListTile(
              title: Text('Receta de Examen medico'),
               leading: Icon( Icons.content_paste),
               
              onTap: () {
               Navigator.of(context).pop();
               Navigator.pushNamed(context, 'exam');
               
            },
            ),
             Divider(),

              ListTile(
              title: Text('Configuracion'),
               leading: Icon( Icons.settings),
               
              onTap: () {
               Navigator.of(context).pop();
               Navigator.pushNamed(context, 'configuration');
            },
            ),
             Divider(),

             ListTile(
              title: Text('Ayuda y comentarios'),
               leading: Icon( Icons.help_outline),
               
              onTap: () {
               Navigator.of(context).pop();
               Navigator.pushNamed(context, 'help');
            },
            ),
             Divider(),
          ]
        ),

      ),
     
      );
      

  }
 //BuildContext context;
 Widget _cardiologia() {
   return Card(
     child: Column(
       children: <Widget>[
         Image(
               image: AssetImage('assets/cardiologia.png')
             ),
         ListTile(
           //leading: Icon( Icons.person, color: Colors.grey),
           title: Text('Cardiologia'),
           subtitle: Text('Nos encargamos del estudio, diagnóstico y tratamiento de las enfermedades del corazón y del aparato circulatorio.'),
         ),
           FlatButton(
             color: Colors.transparent,
                  child: Text('RESERVAR'),
                  textColor: Colors.blue,
                  onPressed: (){
                    Navigator.pushNamed(context, 'reserva');
                  }
          ),
       ],
     )
   );
  }

  Widget _pidiatria() {
    return Card(
     child: Column(
       children: <Widget>[
         Image(
               image: AssetImage('assets/pediatria.png')
             ),
         ListTile(
           //leading: Icon( Icons.person, color: Colors.grey),
           title: Text('Pediatria'),
           subtitle: Text('Nos encargamos del estudio, diagnóstico y tratamiento de las enfermedades del corazón y del aparato circulatorio.'),
         ),
           FlatButton(
             color: Colors.transparent,
                  child: Text('VER MÁS'),
                  textColor: Colors.blue,
                  onPressed: (){
                  }
          ),
       ],
     )
   );
  }

  Widget _ginecologia() {
    return Card(
     child: Column(
       children: <Widget>[
         Image(
               image: AssetImage('assets/ginecologia.ppg.jpg')
             ),
         ListTile(
           //leading: Icon( Icons.person, color: Colors.grey),
           title: Text('Ginecologia'),
           subtitle: Text('Nos encargamos del estudio, diagnóstico y tratamiento de las enfermedades del corazón y del aparato circulatorio.'),
         ),
           FlatButton(
             color: Colors.transparent,
                  child: Text('VER MÁS'),
                  textColor: Colors.blue,
                  onPressed: (){
                    
                  }
          ),
       ],
     )
   );
  }

  Widget _oftalmologia() {
    return Card(
     child: Column(
       children: <Widget>[
         Image(
               image: AssetImage('assets/oftalmologia.png')
             ),
         ListTile(
           //leading: Icon( Icons.person, color: Colors.grey),
           title: Text('Oftalmologia'),
           subtitle: Text('Nos encargamos del estudio, diagnóstico y tratamiento de las enfermedades del corazón y del aparato circulatorio.'),
         ),
           FlatButton(
             color: Colors.transparent,
                  child: Text('Reservar'),
                  textColor: Colors.blue,
                  onPressed: (){
                     Navigator.pushNamed(context, 'add');
                  }
          ),
       ],
     )
   );
  }
    
  }
