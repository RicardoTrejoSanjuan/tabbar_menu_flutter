import 'dart:async';
import 'package:flutter/material.dart';
import 'package:menu_tabbar/libreria/circular_reveal_animation.dart';

Future<void> showRevealDialog(BuildContext context) async {
  showGeneralDialog(
    barrierLabel: "Label",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 500),
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.orange,
            child: new ListView(
              // shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                // Center(
                  new FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: new Text("Facebook"),
                  ),
                // ),
                // new Padding(padding: new EdgeInsets.all(5.00)),
                // new RaisedButton(
                //   onPressed: () {
                //     Navigator.of(context).pop();
                //   },
                //   child: new Text("Google"),
                // )
              ],
      //   ListTile(title: Text('item1')),
      //   Divider(),
      //   ListTile(title: Text('item1')),
      //   Divider(),
      //   ListTile(title: Text('item1')),
      //   Divider(),
      // ]
              // _listaItems(context)
              // <Widget>[
                // new RaisedButton(
                //   onPressed: () {
                //     Navigator.of(context).pop();
                //   },
                //   child: new Text("Facebook"),
                // ),
                // new Padding(padding: new EdgeInsets.all(5.00)),
                // new RaisedButton(
                //   onPressed: () {
                //     Navigator.of(context).pop();
                //   },
                //   child: new Text("Google"),
                // )
              // ],
            ),
            // _lista(context),
            // Column(
            //   // mainAxisSize: MainAxisSize.min,
            //   children: <Widget>[
            //     Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore'),
            //     FlutterLogo(size: 100.0)
            //   ],
            // ),

            // RaisedButton(
            //   color: Colors.blue,
            //   child: Text('data'),
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // ),

            // child: Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: FlutterLogo(size: 100.0)
            //   // Image.asset('assets/klimt.png'),
            // ),
            // margin: EdgeInsets.only(top: 50, left: 12, right: 12, bottom: 0),
            // decoration: BoxDecoration(
            //   color: Colors.white,
            //   borderRadius: BorderRadius.circular(5),
            // ),
          ),
        ),
      );
      // Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.height,
      //       color: Colors.orange,
      //       child: RaisedButton(
      //         // color: Colors.blue,
      //         child: Text('data'),
      //         onPressed: () {
      //           Navigator.of(context).pop();
      //         },
      //       ),
      //     ),
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return CircularRevealAnimation(
        child: child,
        animation: anim1,
        centerAlignment: Alignment.bottomCenter,
      );
    },
  );

  Widget optionOne = SimpleDialogOption(
    child: const Text('horse'),
    onPressed: () {
      print('horse');
      Navigator.of(context).pop();
    },
  );
  Widget optionTwo = SimpleDialogOption(
    child: const Text('cow'),
    onPressed: () {
      print('cow');
      Navigator.of(context).pop();
    },
  );


  Widget _lista(BuildContext context) {

    // Opcion Poco convencional
    // menuProvider.cargarData()
    // .then((res) {
    //   print('Lista');
    //   print(res);
    // });

    return ListView(
      // children: _listaItems(context),
    );

    // return FutureBuilder(
    //   future: menuProvider.cargarData(),
    //   initialData: [],
    //   builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {

    //     // print('builder');
    //     // print(snapshot.data);
    //     return ListView(
    //       children: _listaItems(snapshot.data, context),
    //     );
    //   },
    // );
  }



  // List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  List<Widget> _listaItems(BuildContext context) {

    // ---  Opcion 2 para el menu ----

    // final List<Widget> lista = [];

    // data.forEach((item) {
    //   final widgetTemp = ListTile(
    //     title: Text(item['texto']),
    //     leading: getIcon(item['icon']),
    //     trailing: Icon(Icons.keyboard_arrow_right),
    //     onTap: () {

    //       Navigator.pushNamed(context, item['ruta']);

    //       // Esta opcion funciona pero es de forma estatica
    //       // final route = MaterialPageRoute(
    //       //   builder: (context) => AlertPage()
    //       // );
    //       // Navigator.push(context, route);
    //     },
    //   );

    //   lista..add(widgetTemp)
    //        ..add(Divider());
    // });

    // --  End opcion 2 para el menu ---

    // ---  Opcion 1 para el menu ----
    // final List<Widget> lista = data.map((item) {
    //   return Column(
    //     children: <Widget>[
    //       ListTile(
    //         title: Text(item['texto']),
    //         leading: Icon(Icons.mood, color: Colors.blue),
    //         trailing: Icon(Icons.keyboard_arrow_right),
    //         onTap: () {},
    //       ),
    //       Divider(),
    //     ],
    //   );
    // }).toList();

    // return lista;

    return [
      ListTile(title: Text('item1')),
      Divider(),
      ListTile(title: Text('item1')),
      Divider(),
      ListTile(title: Text('item1')),
      Divider(),
    ];
  }
}
