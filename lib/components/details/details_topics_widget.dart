import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTopicsWidget extends StatelessWidget {
  final String topicName;
  final String topicContent;

  const DetailTopicsWidget(
      {super.key, required this.topicName, required this.topicContent});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
            text: "$topicName: ",
            style: GoogleFonts.jost(
                textStyle: const TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w300))),
        TextSpan(text: topicContent),
      ],
    ));
  }
}
