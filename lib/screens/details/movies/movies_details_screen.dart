import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/app_drawer_widget.dart';
import 'package:iptv_mobile/components/app_title_widget.dart';
import 'package:iptv_mobile/components/details/details_topics_widget.dart';
import 'package:iptv_mobile/components/details/movies/play_button_widget.dart';
import 'package:iptv_mobile/components/details/movies/similar_movie_card_widget.dart';
import 'package:iptv_mobile/mocks/movies/movies_mock.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class MoviesDetailsScreen extends StatelessWidget {
  final String moviePhotoUrl;
  final String movieTitle;
  final int year;
  final String platformName;
  final String genderName;
  final String movieDescription;
  final String movieUrl;

  //Lista de filmes semelhantes ao filme
  final mockSimilarMovies = MoviesMock().mockMoviesList;

  MoviesDetailsScreen(
      {super.key,
      required this.moviePhotoUrl,
      required this.movieTitle,
      required this.year,
      required this.platformName,
      required this.genderName,
      required this.movieDescription,
      required this.movieUrl});

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
        body: SingleChildScrollView(
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            BackButton(
                              style: const ButtonStyle(
                                iconSize: WidgetStatePropertyAll(33),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed("/list-movies");
                              },
                            ),
                            Flexible(
                                child: SizedBox(
                              width: 300,
                              child: Text(
                                movieTitle,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      fontSize: 26.5,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors().mainPurple)),
                              child: Image.network(moviePhotoUrl, width: 170),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 180,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DetailTopicsWidget(
                                    topicName: "Ano do filme",
                                    topicContent: "$year",
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  DetailTopicsWidget(
                                    topicName: "Plataforma",
                                    topicContent: platformName,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  DetailTopicsWidget(
                                    topicName: "Gêneros",
                                    topicContent: genderName,
                                  ),
                                  const SizedBox(
                                    height: 43,
                                  ),
                                  DetailTopicsWidget(
                                    topicName: "Descrição",
                                    topicContent: movieDescription,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            PlayButtonWidget(
                              onPressed: () {
                                //Direcionar para o Player
                              },
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Semelhantes:",
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 200,
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1,
                                        mainAxisSpacing: 10,
                                        childAspectRatio: 1.3),
                                scrollDirection: Axis.horizontal,
                                itemCount: mockSimilarMovies.length,
                                itemBuilder: (context, index) {
                                  return SimilarMovieCardWidget(
                                      moviePhotoUrl:
                                          mockSimilarMovies[index].photoUrl,
                                      movieTitle:
                                          mockSimilarMovies[index].title,
                                      genderName: mockSimilarMovies[index]
                                          .genders[0]
                                          .name);
                                },
                              ),
                            ),
                          ],
                        )
                      ]))),
        ));
  }
}
