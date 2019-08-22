import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final Widget child;
  final Color textColor;
  final Function onPressed;

  AdaptiveFlatButton({
    this.child,
    this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: child,
            onPressed: onPressed,
          )
        : FlatButton(
            textColor: textColor,
            child: child,
            onPressed: onPressed,
          );
  }
}
