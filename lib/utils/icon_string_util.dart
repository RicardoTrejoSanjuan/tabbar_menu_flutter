import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'Home'     : Icons.home,
  'Business' : Icons.business,
  'Menu'     : Icons.add_circle,
  'School'   : Icons.school,
  'Work'     : Icons.work
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.blue);
}