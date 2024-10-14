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
                "CATEGORIAS DE CANAIS",
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
                return ContentCardWidget(text: mockGendersList[index].name);
              })
        ]),
      ),
    );
  }
}
