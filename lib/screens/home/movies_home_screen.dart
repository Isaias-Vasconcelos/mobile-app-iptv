import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/home/content_card_widget.dart';
import 'package:iptv_mobile/mocks/genders/genders_mock.dart';

class MoviesHomeScreen extends StatefulWidget {
  const MoviesHomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MoviesHomeScreenState();
}

class _MoviesHomeScreenState extends State<MoviesHomeScreen> {
  final mockGendersList = GendersMock().mockGendersList;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Text(
          "CATEGORIAS DE FILMES",
          textAlign: TextAlign.center,
          style: GoogleFonts.jost(
              textStyle: const TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
        ),
      ),
      Flexible(
        child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 17,
              mainAxisSpacing: 20,
            ),
            itemCount: mockGendersList.length,
            itemBuilder: (context, index) {
              //Implementar GestureDetect para tela de listagem de filmes
              return ContentCardWidget(text: mockGendersList[index].name);
            }),
      ),
    ]);
  }
}
