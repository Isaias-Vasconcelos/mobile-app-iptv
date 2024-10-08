import 'package:iptv_mobile/models/episodie_model.dart';

class Season {
  String id;
  String seriesId;
  int number;
  List<Episodie> episodies;

  Season({
    required this.id,
    required this.seriesId,
    required this.number,
    required this.episodies,
  });

  factory Season.fromMap(Map<String, dynamic> item) {
    return Season(
        id: item['id'],
        seriesId: item['seriesId'],
        number: item['number'],
        episodies: List<Episodie>.from(
            item['episodies']?.map((e) => Episodie.fromMap(e)) ?? []));
  }
}
