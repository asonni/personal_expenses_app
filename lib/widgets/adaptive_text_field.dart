import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function onSubmitted;

  AdaptiveTextField({
    this.labelText,
    this.controller,
    this.keyboardType,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS && false
        ? CupertinoTextField(
            placeholder: labelText,
            controller: controller,
            keyboardType: keyboardType,
            onSubmitted: onSubmitted,
          )
        : TextField(
            decoration: InputDecoration(
              labelText: labelText,
            ),
            controller: controller,
            keyboardType: keyboardType,
            onSubmitted: onSubmitted,
            // onChanged: (val) => titleInput = val,
          );
  }
}
