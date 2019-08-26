import 'package:flutter/material.dart';
import 'package:prohealth/src/pages/add_page.dart';
import 'package:prohealth/src/pages/configuration_page.dart';
import 'package:prohealth/src/pages/exam_page.dart';
import 'package:prohealth/src/pages/formulario_page.dart';
import 'package:prohealth/src/pages/help_page.dart';

import 'package:prohealth/src/pages/home_page.dart';
import 'package:prohealth/src/pages/login_page.dart';
import 'package:prohealth/src/pages/recipe_page.dart';
import 'package:prohealth/src/pages/reserva.dart';


Map<String, WidgetBuilder> getApplicationRoure(){

return <String, WidgetBuilder>{
    '/'             : ( BuildContext context ) => LoginPage(),
    'formulario'    : ( BuildContext context ) => FormularioPage(),
    'home'          : ( BuildContext context ) => HomePage(),
    'add'           : ( BuildContext context ) => AddPage(),
    'recipe'        : ( BuildContext context ) => RecipePage(),
    'exam'          : ( BuildContext context ) => ExamPage(),
    'configuration' : ( BuildContext context ) => ConfigurationPage(),
    'help'          : ( BuildContext context ) => HelpPage(), 
    'reserva'       : (BuildContext context ) => ReservaPage(),
      };
}

