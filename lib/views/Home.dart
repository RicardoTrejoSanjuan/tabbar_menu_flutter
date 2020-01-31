import 'package:flutter/material.dart';
import 'package:menu_tabbar/components/menu.component.dart';
import 'package:menu_tabbar/components/menu2.component.dart';
import 'package:menu_tabbar/components/menu3.component.dart';

class Home extends StatefulWidget {

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('App'),
        ),
        body: new SafeArea(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Center(child:
                new Text("View", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
              ),
            ]
          )
        ),
        bottomNavigationBar: MenuWidget3()
    );
  }
}