import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/home/content_card_widget.dart';
import 'package:iptv_mobile/mocks/genders/genders_mock.dart';

import '../../components/list_content/movies/movies_list_card_widget.dart';

class SeriesHomeScreen extends StatefulWidget {
  const SeriesHomeScreen({super.key});

  @override
  State<SeriesHomeScreen> createState() => _SeriesHomeScreenState();
}

class _SeriesHomeScreenState extends State<SeriesHomeScreen> {
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
                "CATEGORIAS DE SÉRIES",
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
                      Navigator.of(context)
                          .pushReplacementNamed("/list-series");
                    },
                    child: Text(''));
              })
        ]),
      ),
    );
  }
}
