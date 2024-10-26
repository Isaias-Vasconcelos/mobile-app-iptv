import 'package:flutter/material.dart';
import 'package:iptv_mobile/controllers/episodie_controller.dart';
import 'package:iptv_mobile/models/series_model.dart';
import 'package:provider/provider.dart';

import '../../../components/details/card_image_widget.dart';
import '../../../style/app_colors.dart';
import '../../player/player_screen.dart';

class SeriesDetailsScreen extends StatefulWidget {
  Series series;

  SeriesDetailsScreen({super.key, required this.series});

  @override
  State<SeriesDetailsScreen> createState() => _SeriesDetailsScreenState();
}

class _SeriesDetailsScreenState extends State<SeriesDetailsScreen> {
  @override
  void initState() {
    super.initState();

    final episodieController =
        Provider.of<EpisodieController>(context, listen: false);
    String? seasonId = widget.series.seasons[0].id;

    episodieController.loadEpisodies(seasonId);
  }

  void playSeries(String contentName, String urlContent) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PlayerScreen(
                contentName: contentName,
                urlContent:
                    'https://iptv-content-bucket.s3.us-east-1.amazonaws.com/movies/movies-content/Homem+Aranha+de+Volta+ao+Lar.mp4',
              )),
    );
  }

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final episodieController = Provider.of<EpisodieController>(context);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(9, 8, 8, 1),
      appBar: AppBar(
        backgroundColor: AppColors().mainPurple,
        title: Text(
          widget.series.title,
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
                imageUrl: widget.series.photoUrl,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(widget.series.genders[0].name,
                      style: const TextStyle(color: Colors.white))),
              const SizedBox(
                height: 20,
              ),
              Text(widget.series.description,
                  style: const TextStyle(color: Colors.white)),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Temporadas:',
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
                width: double.infinity,
                child: DropdownButton<String>(
                  value: selectedValue,
                  isExpanded: true,
                  hint: const Text('Selecione uma temporada'),
                  items: widget.series.seasons
                      .map<DropdownMenuItem<String>>((season) {
                    return DropdownMenuItem<String>(
                      value: season.id,
                      child: Text(
                        'Temporada ${season.number}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });

                    episodieController.loadEpisodies(newValue);
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Consumer<EpisodieController>(
                builder: (context, controller, child) {
                  if (controller.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (controller.episodies.isEmpty) {
                    return const Center(
                      child: Text('Nenhum episódio encontrado',
                          style: TextStyle(color: Colors.white)),
                    );
                  }

                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.episodies.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 10);
                    },
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading:
                            const Icon(Icons.play_circle, color: Colors.white),
                        title: Text(
                          controller.episodies[index].title,
                          style: const TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis),
                        ),
                        subtitle: Text(
                          controller.episodies[index].description,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        onTap: () {
                          playSeries(
                            controller.episodies[index].title,
                            controller.episodies[index].episodieUrl,
                          );
                        },
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
