import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpeedOptionsTextStyle {
  late TextStyle style;

  SpeedOptionsTextStyle() {
    style = GoogleFonts.jost(
        textStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w400));
  }
}
