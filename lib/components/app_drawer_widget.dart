import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/screens/home/genero/gender_home_screen.dart';
import 'package:provider/provider.dart';

import '../controllers/gender_controller.dart';
import '../models/gender_model.dart';
import '../style/app_colors.dart';

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
  void initState() {
    super.initState();

    final genderController =
        Provider.of<GenderController>(context, listen: false);
    genderController.getAllGenders();
  }

  void redirecionarPagina(Gender gender) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => GenderHomeScreen(
          gender: gender,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColors();

    return Drawer(
      width: 260,
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: colors.mainPurple,
            ),
            child: Center(
              child: Text(
                'Gêneros',
                style: GoogleFonts.roboto(
                  color: textAndIconsColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Consumer<GenderController>(
              builder: (context, controller, child) {
                if (controller.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      titleTextStyle:
                      const TextStyle(color: Colors.white, fontSize: 17),
                      leading: Icon(
                        Icons.play_circle_outline_sharp,
                        color: colors.mainPurple,
                      ),
                      title: Text(controller.genders[index].name),
                      onTap: () {
                        redirecionarPagina(controller.genders[index]);
                      },
                    );
                  },
                  itemCount: controller.genders.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
