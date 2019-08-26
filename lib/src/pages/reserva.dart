import 'package:flutter/material.dart';


class ReservaPage extends StatefulWidget {
  ReservaPage({Key key}) : super(key: key);

  _ReservaPageState createState() => _ReservaPageState();
}

class _ReservaPageState extends State<ReservaPage> {

TimeOfDay _time = new TimeOfDay.now();
  
  String _reserva = '';
  String _fecha   = '';


  String _opcionSeleccionada = 'Especialidad';

  List<String> _especialidad = ['Especialidad', 'Cardiologia', 'Pediatria', 'Ginecologia', 'Oftalmologia'];

  TextEditingController _dateController = new TextEditingController();
  TextEditingController _dateControllerHora = new TextEditingController();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Reservar cita'),
      ),
      
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
        children: <Widget>[
          _formulario(),
           Divider(),          
          _crearFecha(context),
          Divider(),
          _crearHora(context),
          Divider(),
          _crearDropdown(),
          _crearNombreRes(),
           Divider(),
        
      ],
      
      ),
      
    );
   
  }

  Widget _crearFecha(BuildContext context) {
      return TextField(
        enableInteractiveSelection: false,
        controller: _dateController,
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha de reservacion',
        labelText: 'Fecha de reservacion',
        suffixIcon: Icon(Icons.perm_contact_calendar, color: Colors.grey,),
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context );
      },
    );
  
  }
     _selectDate(BuildContext context ) async {
        
        DateTime picked = await showDatePicker(
          context: context,
          initialDate:  new DateTime.now(),
          firstDate: new DateTime(2018),
          lastDate: new DateTime(2030),
          locale: Locale('es', 'ES'),
          
        );

        if ( picked != null ){
          setState(() {
           _fecha = picked.toString(); 
           _dateController.text = _fecha;
          });
        }

     }

     List<DropdownMenuItem<String>> getOpcionesDropdown() {

       List<DropdownMenuItem<String>> lista = new List();

       _especialidad.forEach( (poder) {
         lista.add( DropdownMenuItem(
           child: Text(poder),
           value: poder,
         ));

      }); 

      return lista;
     }

  Widget _crearDropdown() {
   return Row(
     children: <Widget>[
       Icon(Icons.select_all),
       SizedBox(width: 30.0),
       Expanded(
        child:DropdownButton(
          value: _opcionSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt) {
            setState(() {
          _opcionSeleccionada = opt;
        });
      },
    ) 
  )
       
   ],
     
    );

  }
    _formulario() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
      //  counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Consulta o Examen',
        labelText: 'Servicio de la reserva ',
        suffixIcon: Icon(Icons.border_color, color: Colors.grey,),
        //icon: Icon(Icons.exit_to_app, color: Colors.grey,)
      ),
      onChanged: (valor){
        setState(() {
          _reserva = valor;
        });
      },
    );
  }

  Widget _crearNombreRes(){
  return ListTile(
      title: Text ('El servivio es: $_reserva'),
      subtitle: Text('La fecha es: $_fecha, $_time'),
    );
  }

  _crearHora(BuildContext context) {
        return TextField(
        enableInteractiveSelection: false,
        controller: _dateControllerHora,
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Hora de reservacion',
        labelText: 'Hora de reservacion',
        suffixIcon: Icon(Icons.timer, color: Colors.grey,),
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectTime( context );
      },
    );
  
  }
     _selectTime(BuildContext context ) async {
        
        final TimeOfDay  picked = await showTimePicker(
          context: context,
          initialTime: _time
          
        );

        if ( picked != null && picked != _time ){
          print('Time select: ${_time.toString()}');
          setState(() {
         //  _time = picked.toString(); 
           _time = picked;
          });
        }

     }


}

