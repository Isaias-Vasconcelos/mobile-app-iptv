import 'package:flutter/material.dart';
import 'package:iptv_mobile/components/details/card_image_widget.dart';
import 'package:iptv_mobile/components/details/movies/play_button_widget.dart';
import 'package:iptv_mobile/components/list_content/movies/movies_list_card_widget.dart';
import 'package:iptv_mobile/controllers/movie_controller.dart';
import 'package:iptv_mobile/models/movies_model.dart';
import 'package:iptv_mobile/style/app_colors.dart';
import 'package:provider/provider.dart';

class MoviesDetailsScreen extends StatefulWidget {
  Movies movies;

  MoviesDetailsScreen({super.key, required this.movies});

  @override
  State<MoviesDetailsScreen> createState() => _MoviesDetailsScreenState();
}

class _MoviesDetailsScreenState extends State<MoviesDetailsScreen> {

  @override
  void initState() {
    super.initState();

    final moviesController =
        Provider.of<MovieController>(context, listen: false);
    moviesController.loadMovies();
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
    return Scaffold(
      backgroundColor: const Color.fromRGBO(9, 8, 8, 1),
      appBar: AppBar(
        backgroundColor: AppColors().mainPurple,
        title: Text(
          widget.movies.title,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              CardImageWidget(
                imageUrl: widget.movies.photoUrl,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                      '${widget.movies.year} - ${widget.movies.genders[0].name}',
                      style: const TextStyle(color: Colors.white))),
              const SizedBox(
                height: 20,
              ),
              PlayButtonWidget(onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              Text(widget.movies.description,
                  style: const TextStyle(color: Colors.white)),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Filmes semelhantes:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: Consumer<MovieController>(
                  builder: (context, controller, child) {
                    if (controller.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (controller.movies.isEmpty) {
                      return const Center(
                        child: Text(
                          'Nenhum filme semelhante disponível.',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }

                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            onTap: () {
                              verDetalhesFilme(controller.movies[index]);
                            },
                            child: MoviesListCardWidget(
                                movies: controller.movies[index]),
                          ),
                        );
                      },
                      itemCount: controller.movies.length,
                      scrollDirection: Axis.horizontal,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
