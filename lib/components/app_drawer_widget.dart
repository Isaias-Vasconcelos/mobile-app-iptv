import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawerWidget extends StatefulWidget {
  const AppDrawerWidget({super.key});

  @override
  State<StatefulWidget> createState() => _AppDrawerWidgetState();
}

//Criar telas e logica para onde as opção do Drawer direcionam
class _AppDrawerWidgetState extends State<AppDrawerWidget> {
  //Adicionar estado
  final Color textAndIconsColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 260,
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: Text(
                  "Olá, João Freire",
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: textAndIconsColor)),
                )),
          ),
          ListTile(
            leading: Icon(
              Icons.person_outline,
              size: 30,
              color: textAndIconsColor,
            ),
            title: Text(
              "Minha conta",
              style: GoogleFonts.jost(
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: textAndIconsColor)),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              size: 30,
              color: textAndIconsColor,
            ),
            title: Text(
              "Sair da conta",
              style: GoogleFonts.jost(
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: textAndIconsColor)),
            ),
          ),
          const SizedBox(
            height: 35,
            child: DrawerHeader(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: Text("")),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Feedback",
              style: TextStyle(color: Color.fromARGB(144, 255, 255, 255)),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.emoji_flags_sharp,
              size: 31,
              color: textAndIconsColor,
            ),
            title: Text(
              "Relate um problema",
              style: GoogleFonts.jost(
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: textAndIconsColor)),
            ),
          ),
        ],
      ),
    );
  }
}
