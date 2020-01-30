import 'package:flutter/material.dart';

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
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('School'),
            ),
          ],
        )
        // bottomNavigationBar: new MenuTabBar(
        //     background: Colors.blue,
        //     iconButtons: [
        //       new IconButton(color: Colors.blue, icon: new Icon(Icons.home, size: 30), onPressed: (){}),
        //       new IconButton(color: Colors.blue, icon: new Icon(Icons.search, size: 30), onPressed: (){}),
        //       new IconButton(color: Colors.blue, icon: new Icon(Icons.map, size: 30), onPressed: (){}),
        //       new IconButton(color: Colors.blue, icon: new Icon(Icons.favorite, size: 30), onPressed: (){}),
        //     ],
        //     child: new Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        //       new Container(child: new Text("Reminder", style: TextStyle(color: Colors.white, fontSize: 20)), margin: EdgeInsets.all(10)),
        //       new Container(child: new Text("Camera", style: TextStyle(color: Colors.white, fontSize: 20)), margin: EdgeInsets.all(10)),
        //       new Container(child: new Text("Attchment", style: TextStyle(color: Colors.white, fontSize: 20)), margin: EdgeInsets.all(10)),
        //       new Container(child: new Text("Text Note", style: TextStyle(color: Colors.white, fontSize: 20)), margin: EdgeInsets.all(10))
        //     ]),
        // )
    );
  }
}