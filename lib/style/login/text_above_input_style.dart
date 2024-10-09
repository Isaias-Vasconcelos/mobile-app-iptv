import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Implementar factory
class TextAboveInputStyle {
  late TextStyle textStyle;

  TextAboveInputStyle() {
    textStyle = GoogleFonts.jost(
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700));
  }
}
