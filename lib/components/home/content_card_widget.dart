import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentCardWidget extends StatelessWidget {
  final String text;

  const ContentCardWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 150,
      child: Stack(
        children: [
          Positioned.fill(
              child: Image.network(
            "https://www.justwatch.com/images/poster/243405440/s332/clube-da-luta",
            fit: BoxFit.cover,
          )),
          Positioned.fill(
              child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.white)),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.jost(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.3,
                      fontWeight: FontWeight.w700)),
            ),
          ))
        ],
      ),
    );
  }
}
