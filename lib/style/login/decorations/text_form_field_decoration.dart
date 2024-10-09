import 'package:flutter/material.dart';

//Implementar factory
class TextFormFieldDecoration {
  final Icon prefixIcon;
  late InputDecoration decoration;

  TextFormFieldDecoration({required this.prefixIcon}) {
    decoration = InputDecoration(
        prefixIcon: prefixIcon,
        border: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6))));
  }
}
