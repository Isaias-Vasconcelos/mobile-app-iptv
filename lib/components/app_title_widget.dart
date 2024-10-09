import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTitleWidget extends StatelessWidget {
  const AppTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "ALPHA ",
          style: GoogleFonts.jost(
              textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.black))),
      TextSpan(
          text: "TV",
          style: GoogleFonts.jost(
              textStyle:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.w800))),
    ]));
  }
}
