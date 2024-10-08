import 'package:iptv_mobile/models/gender_model.dart';
import 'package:iptv_mobile/models/season_model.dart';
import 'package:iptv_mobile/models/platform_model.dart';

class Series {
  String id;
  String title;
  String photoUrl;
  String description;
  String platformId;
  Platform platform;
  List<Gender> genders;
  List<Season> seasons;

  Series({
    required this.id,
    required this.title,
    required this.photoUrl,
    required this.description,
    required this.platformId,
    required this.platform,
    required this.genders,
    required this.seasons,
  });

  factory Series.fromMap(Map<String, dynamic> item) {
    return Series(
        id: item['id'],
        title: item['title'],
        photoUrl: item['photoUrl'],
        description: item['description'],
        platformId: item['platformId'],
        platform: Platform.fromMap(item['platform']),
        genders: List<Gender>.from(
            item['genders']?.map((e) => Gender.fromMap(e)) ?? []),
        seasons: List<Season>.from(
          item['seasons']?.map((e) => Season.fromMap(e)) ?? [],
        ));
  }
}
