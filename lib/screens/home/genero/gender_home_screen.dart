import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/models/gender_model.dart';
import 'package:iptv_mobile/screens/home/genero/movies_gender_screen.dart';
import 'package:iptv_mobile/screens/home/genero/series_gender_screen.dart';

import '../../../style/app_colors.dart';

class GenderHomeScreen extends StatefulWidget {
  Gender gender;

  GenderHomeScreen({super.key, required this.gender});

  @override
  State<GenderHomeScreen> createState() => _GenderHomeScreenState();
}

class _GenderHomeScreenState extends State<GenderHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors().mainPurple,
          title: Text(widget.gender.name),
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              child: Text(
                "FILMES",
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w800)),
              ),
            ),
            Tab(
              child: Text(
                "SERIES",
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w800)),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          MoviesGenderScreen(gender: widget.gender),
          SeriesGenderScreen(gender: widget.gender)
        ])
      ),
    );
  }
}
