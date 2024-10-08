class Gender {
  String id;
  String name;

  Gender({
    required this.id,
    required this.name,
  });

  factory Gender.fromMap(Map<String, dynamic> item) {
    return Gender(
      id: item['id'],
      name: item['name'],
    );
  }
}
