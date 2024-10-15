import 'package:flutter/material.dart';
import 'package:iptv_mobile/components/app_drawer_widget.dart';
import 'package:iptv_mobile/components/app_title_widget.dart';
import 'package:iptv_mobile/components/back_button_sliver_widget.dart';
import 'package:iptv_mobile/components/list_content/input_text_list_content_widget.dart';
import 'package:iptv_mobile/components/list_content/series/series_list_card_widget.dart';
import 'package:iptv_mobile/components/list_content/title_list_content_widget.dart';
import 'package:iptv_mobile/mocks/series/series_mock.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class ListSeriesScreen extends StatefulWidget {
  const ListSeriesScreen({super.key});

  @override
  State<ListSeriesScreen> createState() => _ListSeriesScreenState();
}

class _ListSeriesScreenState extends State<ListSeriesScreen> {
  final mockSeriesList = SeriesMock().mockSeriesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          })),
      drawer: const AppDrawerWidget(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: CustomScrollView(slivers: [
              BackButtonSliverWidget(onPressed: () {
                Navigator.of(context).pushReplacementNamed("/home");
              }),
              const TitleListContentWidget(title: "AÇÃO"),
              const InputTextListContentWidget(),
              SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 245),
                  itemCount: mockSeriesList.length,
                  itemBuilder: (context, index) {
                    //Implementar GestureDetector para detalhes do conteudo
                    return SeriesListCardWidget(
                      seriesPhotoUrl: mockSeriesList[index].photoUrl,
                      seriesTitle: mockSeriesList[index].title,
                      genderName: mockSeriesList[index].genders[0].name,
                      seasonAmount: mockSeriesList[index].seasons.length,
                    );
                  }),
            ])),
      ),
    );
  }
}
