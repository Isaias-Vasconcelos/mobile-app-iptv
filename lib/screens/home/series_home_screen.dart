import 'package:flutter/material.dart';
import 'package:iptv_mobile/components/list_content/series/series_list_card_widget.dart';
import 'package:iptv_mobile/controllers/series_controller.dart';
import 'package:iptv_mobile/models/series_model.dart';
import 'package:iptv_mobile/screens/details/series/series_details_screen.dart';
import 'package:provider/provider.dart';
import '../../style/app_colors.dart';


class SeriesHomeScreen extends StatefulWidget {
  const SeriesHomeScreen({super.key});

  @override
  State<SeriesHomeScreen> createState() => _SeriesHomeScreenState();
}

class _SeriesHomeScreenState extends State<SeriesHomeScreen> {

  @override
  void initState() {
    super.initState();

    final seriesController =
    Provider.of<SeriesController>(context, listen: false);
    seriesController.loadSeries();
  }

  void verDetalhesSeries(Series series){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SeriesDetailsScreen(series: series,)));
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
            child: Consumer<SeriesController>(
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
