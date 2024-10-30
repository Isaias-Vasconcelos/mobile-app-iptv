import 'package:flutter/material.dart';
import 'package:iptv_mobile/components/home/content_card_widget.dart';
import 'package:iptv_mobile/controllers/movie_controller.dart';
import 'package:provider/provider.dart';
import '../../components/back_button_sliver_widget.dart';
import '../../components/list_content/input_text_list_content_widget.dart';
import '../../components/list_content/movies/movies_list_card_widget.dart';
import '../../models/movies_model.dart';
import '../../style/app_colors.dart';
import '../details/movies/movies_details_screen.dart';

class MoviesHomeScreen extends StatefulWidget {
  const MoviesHomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MoviesHomeScreenState();
}

class _MoviesHomeScreenState extends State<MoviesHomeScreen> {
  @override
  void initState() {
    super.initState();

    final movieController =
        Provider.of<MovieController>(context, listen: false);
    movieController.loadMovies();
  }

  void verDetalhesFilme(Movies movie) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MoviesDetailsScreen(
                  movies: movie,
                )));
  }

  @override
  Widget build(BuildContext context) {
    final movieController = Provider.of<MovieController>(context,listen: true);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextField(
            onChanged: (value) {
              if (value.isEmpty) {
                movieController.loadMovies();
              } else {
                movieController.loadMoviesByTerm(value);
              }
            },
            style: TextStyle(color: AppColors().mainPurple),
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Digite o nome do filme',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Consumer<MovieController>(
              builder: (context, controller, child) {
                if (controller.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (controller.movies.isEmpty) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.error_outline_rounded),
                            SizedBox(width: 8), // Espaço entre o ícone e o texto
                            Text('Nenhum filme correspondente!'),
                          ],
                        ),
                      ],
                    ),
                  );
                }

                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 8.0,
                  ),
                  itemCount: controller.movies.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        verDetalhesFilme(controller.movies[index]);
                      },
                      child: MoviesListCardWidget(
                        movies: controller.movies[index],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
