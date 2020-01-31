import 'dart:async';
import 'package:flutter/material.dart';

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

Future<T> showNewDialog<T>({
  @required BuildContext context,
  bool barrierDismissible = true,
  Widget child,
  WidgetBuilder builder,
}) {
  assert(child == null || builder == null);
  assert(debugCheckHasMaterialLocalizations(context));

  final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
  return showGeneralDialog(
    context: context,
    pageBuilder: (BuildContext buildContext, Animation<double> animation, Animation<double> secondaryAnimation) {
      // final Widget pageChild = child ?? Builder(builder: builder);
      return Wrap(
        children: <Widget>[
          Container(
            width: 200.0,
            height: 200.0,
            color: Colors.orange,
          ),
        ],
      );
      // return Builder(builder: (BuildContext context) {
      //   return theme != null ? Theme(data: theme, child: pageChild) : pageChild;
      // });
    },
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black54,
    // barrierColor: Colors.yellow[700],
    transitionDuration: const Duration(milliseconds: 400),
    transitionBuilder: _buildNewTransition,
  );
}