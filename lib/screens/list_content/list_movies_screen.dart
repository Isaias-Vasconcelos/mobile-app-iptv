import 'package:flutter/material.dart';
import 'package:iptv_mobile/components/app_drawer_widget.dart';
import 'package:iptv_mobile/components/app_title_widget.dart';
import 'package:iptv_mobile/components/back_button_sliver_widget.dart';
import 'package:iptv_mobile/components/list_content/input_text_list_content_widget.dart';
import 'package:iptv_mobile/components/list_content/movies/movies_list_card_widget.dart';
import 'package:iptv_mobile/components/list_content/title_list_content_widget.dart';
import 'package:iptv_mobile/mocks/movies/movies_mock.dart';
import 'package:iptv_mobile/screens/details/movies/movies_details_screen.dart';
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
                  itemCount: mockMoviesList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MoviesDetailsScreen(
                                    moviePhotoUrl: mockMoviesList[index].photoUrl,
                                    movieTitle: mockMoviesList[index].title,
                                    year: mockMoviesList[index].year,
                                    platformName: mockMoviesList[index].platform.name,
                                    genderName: mockMoviesList[index].genders[0].name,
                                    movieDescription: mockMoviesList[index].description,
                                    movieUrl: mockMoviesList[index].movieUrl)));
                      },
                      child: MoviesListCardWidget(
                        moviePhotoUrl: mockMoviesList[index].photoUrl,
                        movieTitle: mockMoviesList[index].title,
                        genderName: mockMoviesList[index].genders[0].name,
                      ),
                    );
                  }),
            ])),
      ),
    );
  }
}
