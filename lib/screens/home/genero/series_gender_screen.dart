import 'package:flutter/material.dart';
import 'package:iptv_mobile/controllers/series_controller.dart';
import 'package:iptv_mobile/models/gender_model.dart';
import 'package:provider/provider.dart';
import '../../../components/list_content/series/series_list_card_widget.dart';
import '../../../models/series_model.dart';
import '../../../style/app_colors.dart';
import '../../details/series/series_details_screen.dart';

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

    final seriesController =
        Provider.of<SeriesController>(context, listen: false);
    seriesController.loadSeriesByGender(widget.gender);
  }


  void verDetalhesSeries(Series series){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SeriesDetailsScreen(series: series,)));
  }

  @override
  Widget build(BuildContext context) {
    final seriesController = Provider.of<SeriesController>(context,listen: true);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextField(
            onChanged: (value) {
              if(value.isEmpty){
                seriesController.loadSeriesByGender(widget.gender);
              } else {
                seriesController.loadSeriesByGenderSearch(widget.gender, value);
              }
            },
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
            child: Consumer<SeriesController>(
              builder: (context, controller, child) {
                if (controller.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (controller.series.isEmpty) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.error_outline_rounded),
                            SizedBox(width: 8), // Espaço entre o ícone e o texto
                            Text('Nenhuma série correspondente!'),
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
                  itemCount: controller.series.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        verDetalhesSeries(controller.series[index]);
                      },
                      child: SeriesListCardWidget(
                        series: controller.series[index],
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
