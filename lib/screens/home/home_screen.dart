import 'package:flutter/material.dart';
import 'package:iptv_mobile/components/app_title_widget.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColors().mainPurple,
        //Titulo provisório
        title: const AppTitleWidget(),
        leading: Builder(builder: (context) {
          return IconButton(onPressed: () {}, icon: const Icon(Icons.menu));
        }),
      ),
      drawer: Drawer(),
    );
  }
}
