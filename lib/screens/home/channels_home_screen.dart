import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/home/content_card_widget.dart';
import 'package:iptv_mobile/mocks/genders/genders_mock.dart';

class ChannelsHomeScreen extends StatefulWidget {
  const ChannelsHomeScreen({super.key});

  @override
  State<ChannelsHomeScreen> createState() => _ChannelsHomeScreenState();
}

class _ChannelsHomeScreenState extends State<ChannelsHomeScreen> {
  final mockGendersList = GendersMock().mockGendersList;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Text(
          "CATEGORIAS DE CANAIS",
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
