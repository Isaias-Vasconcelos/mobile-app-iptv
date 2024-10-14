//Classe de listagem de filmes
import 'package:flutter/material.dart';
import 'package:iptv_mobile/components/app_drawer_widget.dart';
import 'package:iptv_mobile/components/app_title_widget.dart';
import 'package:iptv_mobile/components/back_button_widget.dart';
import 'package:iptv_mobile/components/list_content/input_text_list_content_widget.dart';
import 'package:iptv_mobile/components/list_content/movies_list_card_widget.dart';
import 'package:iptv_mobile/components/list_content/title_list_content_widget.dart';
import 'package:iptv_mobile/mocks/movies/movies_mock.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class ListMoviesScreen extends StatefulWidget {
  const ListMoviesScreen({super.key});

  @override
  State<ListMoviesScreen> createState() => _ListMoviesScreenState();
}

class _ListMoviesScreenState extends State<ListMoviesScreen> {
  final mockMoviesList = MoviesMock().mockMoviesList;

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
              BackButtonWidget(onPressed: () {
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
                  itemCount: mockMoviesList.length,
                  itemBuilder: (context, index) {
                    //Implementar GestureDetect para tela de listagem de filmes
                    return MoviesListCardWidget(
                      moviePhotoUrl: mockMoviesList[index].photoUrl,
                      movieTitle: mockMoviesList[index].title,
                      genderName: mockMoviesList[index].genders[0].name,
                    );
                  }),
            ])),
      ),
    );
  }
}
