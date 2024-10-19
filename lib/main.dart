import 'package:flutter/material.dart';
import 'package:iptv_mobile/app.dart';
import 'package:iptv_mobile/controllers/gender_controller.dart';
import 'package:iptv_mobile/controllers/movie_controller.dart';
import 'package:iptv_mobile/repositories/gender_repository.dart';
import 'package:iptv_mobile/repositories/movie_repository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => GenderController(genderRepository: GenderRepository())),
          ChangeNotifierProvider(create: (_) => MovieController(movieRepository: MovieRepository()))
        ],
        child: const Root(),
      )
  );
}
