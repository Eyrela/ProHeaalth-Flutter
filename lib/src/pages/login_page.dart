import 'package:flutter/material.dart';

class LoginPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      
      child: ListView( children: [
        Image.asset(
          'assets/doctor.png',
          height: 200,
          
        //  padding: EdgeInsets.all(10.0),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
           child: Center(
             child: Text(
              'ProHealth',
               style: TextStyle(
                fontSize: 25,
                 color: Colors.blue,
        ),
          ),
             ),
          ),
        
        Column(
        children: <Widget>[
          FlatButton(
            child: Text('Entrar',
             style: TextStyle(
                fontSize: 20,
                 //color: Colors.blue,
                 ),
                    ),
            
            onPressed: () {
              Navigator.pushNamed(context, 'home');
              
            },
          ),
          FlatButton(
            child: Text('Registrarte',
              style: TextStyle(
                fontSize: 20,
              ),
                ),
            onPressed: () {
               Navigator.pushNamed(context, 'formulario');
            },
          ),
          Padding(
          padding: const EdgeInsets.only(top: 10),
          ),
        ])

      ],

      ),
      
    );
  }
}