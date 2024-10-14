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
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomScrollView(slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            sliver: SliverToBoxAdapter(
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
          ),
          SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 27,
                  crossAxisSpacing: 18,
                  mainAxisExtent: 150),
              itemCount: mockGendersList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("/list-movies");
                  },
                  child: ContentCardWidget(text: mockGendersList[index].name),
                );
              })
        ]),
      ),
    );
  }
}
