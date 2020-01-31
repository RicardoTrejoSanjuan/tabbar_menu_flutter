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
      showRevealDialog(context);
      break;
    case 2:
      showNewDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Bounce In"),
          );
        },
      );
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

  // _mostrarAlerta(BuildContext context) {
  //   showGeneralDialog(
  //     context: context,
  //     pageBuilder: (BuildContext buildContext, Animation<double> animation, Animation<double> secondaryAnimation) {
  //       // return Center(
  //       //   child: Container(
  //       //     width: MediaQuery.of(context).size.width,
  //       //     height: MediaQuery.of(context).size.height,
  //       //     color: Colors.orange,
  //           // child: RaisedButton(
  //           //   child: Text('data'),
  //           //   onPressed: () {
  //           //     Navigator.of(context).pop();
  //           //   },
  //           // ),
  //       //   ),
  //       // );
  //       return Wrap(
  //         children: <Widget>[
  //           Container(
  //             width: MediaQuery.of(context).size.width,
  //             height: MediaQuery.of(context).size.height,
  //             color: Colors.orange,
  //             child: RaisedButton(
  //               // color: Colors.blue,
  //               child: Text('data'),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //           ),
  //         ],
  //       );
  //     },
  //     barrierDismissible: true,
  //     barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
  //     barrierColor: Colors.green,
  //     transitionDuration: const Duration(milliseconds: 500),
  //     transitionBuilder: _buildNewTransition
  //   );
  // }

  // Widget _buildNewTransition(
  //   BuildContext context,
  //   Animation<double> animation,
  //   Animation<double> secondaryAnimation,
  //   Widget child,
  // ) {
  //   return ScaleTransition(
  //     scale: CurvedAnimation(
  //       parent: animation,
  //       curve: Curves.easeIn,
  //       reverseCurve: Curves.easeIn,
  //     ),
  //     child: child,
  //   );
  // }

// Future<T> showNewDialog<T>({
//   @required BuildContext context,
//   bool barrierDismissible = true,
//   Widget child,
//   WidgetBuilder builder,
// }) {
//   assert(child == null || builder == null);
//   assert(debugCheckHasMaterialLocalizations(context));

//   final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
//   return showGeneralDialog(
//     context: context,
//     pageBuilder: (BuildContext buildContext, Animation<double> animation, Animation<double> secondaryAnimation) {
//       // final Widget pageChild = child ?? Builder(builder: builder);
//       return Wrap(
//         children: <Widget>[
//           Container(
//             width: 200.0,
//             height: 200.0,
//             // color: Colors.orange,
//           ),
//         ],
//       );
//       // return Builder(builder: (BuildContext context) {
//       //   return theme != null ? Theme(data: theme, child: pageChild) : pageChild;
//       // });
//     },
//     barrierDismissible: barrierDismissible,
//     barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
//     barrierColor: Colors.black54,
//     // barrierColor: Colors.yellow[700],
//     transitionDuration: const Duration(milliseconds: 400),
//     transitionBuilder: _buildNewTransition,
//   );
// }

// Widget _buildNewTransition(
//   BuildContext context,
//   Animation<double> animation,
//   Animation<double> secondaryAnimation,
//   Widget child,
// ) {
//   return ScaleTransition(
//     scale: CurvedAnimation(
//       parent: animation,
//       curve: Curves.bounceIn,
//       reverseCurve: Curves.bounceIn,
//     ),
//     child: child,
//   );
// }


// Future<void> showRevealDialog(BuildContext context) async {
//     showGeneralDialog(
//       barrierLabel: "Label",
//       barrierDismissible: true,
//       barrierColor: Colors.black.withOpacity(0.5),
//       transitionDuration: Duration(milliseconds: 500),
//       context: context,
//       pageBuilder: (context, anim1, anim2) {
//         return Align(
//           alignment: Alignment.bottomCenter,
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             color: Colors.orange,
//             child: RaisedButton(
//               color: Colors.blue,
//               child: Text('data'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             // child: Padding(
//             //   padding: const EdgeInsets.all(12.0),
//             //   child: FlutterLogo(size: 100.0)
//             //   // Image.asset('assets/klimt.png'),
//             // ),
//             // margin: EdgeInsets.only(top: 50, left: 12, right: 12, bottom: 0),
//             // decoration: BoxDecoration(
//             //   color: Colors.white,
//             //   borderRadius: BorderRadius.circular(5),
//             // ),
//           ),
//         );
//         // Container(
//         //       width: MediaQuery.of(context).size.width,
//         //       height: MediaQuery.of(context).size.height,
//         //       color: Colors.orange,
//         //       child: RaisedButton(
//         //         // color: Colors.blue,
//         //         child: Text('data'),
//         //         onPressed: () {
//         //           Navigator.of(context).pop();
//         //         },
//         //       ),
//         //     ),
//       },
//       transitionBuilder: (context, anim1, anim2, child) {
//         return CircularRevealAnimation(
//           child: child,
//           animation: anim1,
//           centerAlignment: Alignment.bottomCenter,
//         );
//       },
//     );
//   }
}