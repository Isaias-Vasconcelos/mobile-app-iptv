import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class MoviesListCardWidget extends StatelessWidget {
  final String moviePhotoUrl;
  final String movieTitle;
  //Mudar para lista de genders e tratar para adicionar "," depois de cada gender
  final String genderName;

  const MoviesListCardWidget(
      {super.key,
      required this.moviePhotoUrl,
      required this.movieTitle,
      required this.genderName});

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
                    moviePhotoUrl,
                    fit: BoxFit.cover,
                    width: 300,
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
