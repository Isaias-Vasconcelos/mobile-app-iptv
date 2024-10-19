import 'package:flutter/material.dart';
import 'package:iptv_mobile/models/gender_model.dart';
import 'package:provider/provider.dart';

import '../../../components/list_content/movies/movies_list_card_widget.dart';
import '../../../controllers/movie_controller.dart';
import '../../../style/app_colors.dart';

class SeriesGenderScreen extends StatefulWidget {
  Gender gender;

  SeriesGenderScreen({super.key, required this.gender});

  @override
  State<SeriesGenderScreen> createState() => _SeriesGenderScreenState();
}

class _SeriesGenderScreenState extends State<SeriesGenderScreen> {
  @override
  void initState() {
    super.initState();

    final movieController =
        Provider.of<MovieController>(context, listen: false);
    movieController.loadMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextField(
            style: TextStyle(color: AppColors().mainPurple),
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Digite o nome da série',
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
