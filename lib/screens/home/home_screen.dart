import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/app_drawer_widget.dart';
import 'package:iptv_mobile/components/app_title_widget.dart';
import 'package:iptv_mobile/screens/home/channels_home_screen.dart';
import 'package:iptv_mobile/screens/home/movies_home_screen.dart';
import 'package:iptv_mobile/screens/home/series_home_screen.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: Durations.medium2,
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(9, 8, 8, 1),
          appBar: AppBar(
            backgroundColor: AppColors().mainPurple,
            title: const AppTitleWidget(),
            leading: Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ));
            }),
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text(
                  "FILMES",
                  style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w800)),
                ),
              ),
              Tab(
                child: Text(
                  "SERIES",
                  style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w800)),
                ),
              ),
              Tab(
                child: Text(
                  "CANAIS",
                  style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w800)),
                ),
              )
            ]),
          ),
          drawer: const AppDrawerWidget(),
          body: const TabBarView(children: [
            MoviesHomeScreen(),
            SeriesHomeScreen(),
            ChannelsHomeScreen()
          ])),
    );
  }
}
