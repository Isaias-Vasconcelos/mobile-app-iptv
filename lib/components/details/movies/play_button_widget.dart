import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayButtonWidget extends StatelessWidget {
  final void Function() onPressed;

  const PlayButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            shadowColor: WidgetStatePropertyAll(Colors.white),
            minimumSize: WidgetStatePropertyAll(Size(100, 55)),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))))),
        onPressed: onPressed,
        child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.play_circle,
                color: Colors.black,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "ASSISTIR",
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ));
  }
}
