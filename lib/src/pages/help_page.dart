import 'package:flutter/material.dart';


class  HelpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayuda'),
      ),
      
      
       floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back,),
        onPressed: (){
          Navigator.pop(context);
        },
      ),

    );
 
 }

}