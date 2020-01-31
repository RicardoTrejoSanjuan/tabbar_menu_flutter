// import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:menu_tabbar/libreria/circular_reveal_animation.dart';

  mostrarAlerta(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation<double> animation, Animation<double> secondaryAnimation) {
        // return Center(
        //   child: Container(
        //     width: MediaQuery.of(context).size.width,
        //     height: MediaQuery.of(context).size.height,
        //     color: Colors.orange,
            // child: RaisedButton(
            //   child: Text('data'),
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // ),
        //   ),
        // );
        return Wrap(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.orange,
              child: RaisedButton(
                // color: Colors.blue,
                child: Text('data'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.green,
      transitionDuration: const Duration(milliseconds: 500),
      transitionBuilder: _buildNewTransition
    );
  }

  Widget _buildNewTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: animation,
        curve: Curves.easeIn,
        reverseCurve: Curves.easeIn,
      ),
      child: child,
    );
  }