class Platform {
  String id;
  String name;
  String photoUrl;

  Platform({required this.id, required this.name, required this.photoUrl});

  factory Platform.fromMap(Map<String,dynamic> item){
    return Platform(
      id: item['id'],
      name: item['name'],
      photoUrl: item['photoUrl']
    );
  }
}