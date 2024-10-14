import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/home/content_card_widget.dart';
import 'package:iptv_mobile/mocks/genders/genders_mock.dart';

class SeriesHomeScreen extends StatefulWidget {
  const SeriesHomeScreen({super.key});

  @override
  State<SeriesHomeScreen> createState() => _SeriesHomeScreenState();
}

class _SeriesHomeScreenState extends State<SeriesHomeScreen> {
  final mockGendersList = GendersMock().mockGendersList;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
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
              return ContentCardWidget(text: mockGendersList[index].name);
            }),
      ),
    ]);
  }
}
