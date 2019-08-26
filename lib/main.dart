import 'package:flutter/material.dart';
import 'package:prohealth/src/pages/add_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:prohealth/src/routes/route.dart';
//import 'package:prohealth/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), //English
        const Locale('es', 'ES'), //Espanol
      ],
      //home: Home()
      
      initialRoute: '/',
      routes: getApplicationRoure(),
onGenerateRoute: ( RouteSettings settings ){

  print( 'Ruta llamda: ${ settings.name }' );

  return MaterialPageRoute(
    builder: ( BuildContext context ) =>AddPage()
  );
},

    );
  }
}