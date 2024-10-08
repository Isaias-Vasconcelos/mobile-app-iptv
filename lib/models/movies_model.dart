import 'package:iptv_mobile/models/gender_model.dart';
import 'package:iptv_mobile/models/platform_model.dart';

class Movies {
  String id;
  String title;
  String photoUrl;
  String movieUrl;
  int year;
  String description;
  String platformId;
  Platform platform;
  List<Gender> genders;

  Movies({
    required this.id,
    required this.title,
    required this.photoUrl,
    required this.movieUrl,
    required this.year,
    required this.description,
    required this.platformId,
    required this.platform,
    required this.genders,
  });

  factory Movies.fromMap(Map<String, dynamic> item) {
    return Movies(
      id: item['id'],
      title: item['title'],
      photoUrl: item['photoUrl'],
      movieUrl: item['movieUrl'],
      year: item['year'],
      description: item['description'],
      platformId: item['platformId'],
      platform: Platform.fromMap(item['platform']),
      genders: List<Gender>.from(
          item['genders']?.map((e) => Gender.fromMap(e)) ?? []),
    );
  }
}
