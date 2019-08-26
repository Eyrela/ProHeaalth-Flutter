import 'package:flutter/material.dart';


class  ExamPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Receta De Examen Mèdico'),
      ),
      
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}