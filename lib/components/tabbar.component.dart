import 'package:flutter/material.dart';
import 'package:menu_tabbar/components/menu1.component.dart';
import 'package:menu_tabbar/components/menu2.component.dart';
import 'package:menu_tabbar/components/menu3.component.dart';
import 'package:menu_tabbar/data/menu.dart';
import 'package:menu_tabbar/utils/icon_string_util.dart';

class TabBarWidget extends StatefulWidget {
  TabBarWidget({Key key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
    case 0:
      mostrarAlerta(context);
      break;
    case 1:
      showNewDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Bounce In"),
          );
        },
      );
      break;
    case 2:
      showRevealDialog(context);
      break;
    case 3:
      break;
    case 4:
      break;
    default:
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _menuItems(),
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }

  List<BottomNavigationBarItem> _menuItems(){
    List<BottomNavigationBarItem> lista = [];

    listaMenu.forEach((item) {
      final widgetTemp = BottomNavigationBarItem(
        title: Text(item['texto']),
        icon: getIcon(item['texto']),

      );

      lista.add(widgetTemp);
    });
    return lista;
  }
}