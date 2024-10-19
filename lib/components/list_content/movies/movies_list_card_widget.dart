import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/models/movies_model.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class MoviesListCardWidget extends StatelessWidget {
  Movies movies;

  MoviesListCardWidget({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 180,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              movies.photoUrl,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            movies.title,
            style: const TextStyle(
                overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
          ),
          Text(movies.genders[0].name)
        ],
      ),
    );
  }
}
