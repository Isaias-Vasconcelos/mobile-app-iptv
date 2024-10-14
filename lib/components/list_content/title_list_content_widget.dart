import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleListContentWidget extends StatelessWidget {
  final String title;
  const TitleListContentWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: const EdgeInsets.only(bottom: 15),
        sliver: SliverToBoxAdapter(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.jost(
                textStyle: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: Colors.white)),
          ),
        ));
  }
}
