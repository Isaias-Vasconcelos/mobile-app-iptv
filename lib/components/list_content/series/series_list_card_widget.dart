import 'package:flutter/material.dart';
import 'package:iptv_mobile/models/series_model.dart';

class SeriesListCardWidget extends StatelessWidget {

  Series series;

  SeriesListCardWidget({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 180,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              series.photoUrl,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            series.title,
            style: const TextStyle(
                overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
          ),
          Text(series.genders[0].name)
        ],
      ),
    );
  }
}
