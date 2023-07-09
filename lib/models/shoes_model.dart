class Shoes {
  final int id;
  final String name;
  final String image;

  Shoes({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Shoes.fromJson(Map<String, dynamic> json) {
    return Shoes(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}