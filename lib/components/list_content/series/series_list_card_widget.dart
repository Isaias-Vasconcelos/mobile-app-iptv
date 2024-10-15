import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class SeriesListCardWidget extends StatelessWidget {
  final String seriesPhotoUrl;
  final String seriesTitle;
  final String genderName;
  final int seasonAmount;

  const SeriesListCardWidget(
      {super.key,
      required this.seriesPhotoUrl,
      required this.seriesTitle,
      required this.genderName,
      required this.seasonAmount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 200,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: AppColors().mainPurple)),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.network(
                    seriesPhotoUrl,
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                ))),
        Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 16,
              child: Text(
                seriesTitle,
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600)),
              ),
            )),
        Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 12,
              child: Text(
                genderName,
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.normal)),
              ),
            )),
        Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 14,
              child: Text(
                "$seasonAmount Temporadas",
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.normal)),
              ),
            ))
      ],
    );
  }
}
