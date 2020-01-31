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
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.orange,
          child: RaisedButton(
            color: Colors.blue,
            child: Text('data'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
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
}
