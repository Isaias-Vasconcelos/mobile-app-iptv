class Episodie {
  String id;
  String seasonId;
  String title;
  String description;
  String episodieUrl;

  Episodie({
    required this.id,
    required this.seasonId,
    required this.title,
    required this.description,
    required this.episodieUrl,
  });

  factory Episodie.fromMap(Map<String, dynamic> item) {
    return Episodie(
      id: item['id'],
      seasonId: item['seasonId'],
      title: item['title'],
      description: item['description'],
      episodieUrl: item['episodieUrl'],
    );
  }
}
