import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  const PlayButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            fixedSize: WidgetStatePropertyAll(Size(170, 10)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))))),
        onPressed: onPressed,
        child: Row(
          children: [
            const Icon(
              Icons.play_circle_outline_outlined,
              color: Colors.black,
            ),
            const SizedBox(
              width: 13,
            ),
            Text(
              "ASSISTIR",
              style: GoogleFonts.jost(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700)),
            )
          ],
        ));
  }
}
