import 'package:flutter/material.dart';

final _icons = <String, IconData>{

  'add_box'       : Icons.add_box,
  'assignment'    : Icons.assignment,
  'content_paste' : Icons.content_paste,
  'settings'      : Icons.settings,
  'help_outline'  : Icons.help_outline,
};





Icon getIcon( String nombreIcon ){

  return Icon( _icons[nombreIcon], color: Colors.grey);

}