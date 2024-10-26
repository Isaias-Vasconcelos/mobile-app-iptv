import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpeedButtonWidget extends StatelessWidget {
  final void Function() onTap;
  const SpeedButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            const WidgetSpan(
                child: Icon(
              Icons.speed,
              size: 22.5,
            )),
            TextSpan(
                text: " Velocidade",
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(fontSize: 18.5)))
          ])),
    );
  }
}
