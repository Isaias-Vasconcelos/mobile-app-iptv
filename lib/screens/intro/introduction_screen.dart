import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/style/app_colors.dart';
import 'package:iptv_mobile/components/login/login_button_widget.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "ALPHA ",
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w800,
                          color: AppColors().mainPurple))),
              TextSpan(
                  text: "TV",
                  style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                          fontSize: 48, fontWeight: FontWeight.w800))),
            ])),
            const SizedBox(
              height: 8,
            ),
            Text("Aproveite seus Filmes e Series favoritos",
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600))),
            const SizedBox(
              height: 110,
            ),
            Image.asset('assets/images/Tv.png'),
            const SizedBox(
              height: 110,
            ),
            LoginButtonWidget(onPressed:
             () => Navigator.of(context).pushReplacementNamed("/login")  
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
