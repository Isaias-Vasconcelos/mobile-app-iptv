import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class SimilarMovieCardWidget extends StatelessWidget {
  final String moviePhotoUrl;
  final String movieTitle;
  final String genderName;

  const SimilarMovieCardWidget(
      {super.key,
      required this.moviePhotoUrl,
      required this.movieTitle,
      required this.genderName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 150,
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors().mainPurple)),
                child: ClipRRect(
                  child: Image.network(
                    moviePhotoUrl,
                    fit: BoxFit.cover,
                    width: 180,
                  ),
                ))),
        Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 19,
              child: Text(
                movieTitle,
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600)),
              ),
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            genderName,
            style: GoogleFonts.jost(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.normal)),
          ),
        )
      ],
    );
  }
}
