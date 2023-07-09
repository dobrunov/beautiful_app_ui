import 'package:run_app_ui/models/shoes_model.dart';

class User {
  final int id;
  final String avatar;
  final String email;
  final double score;
  final List<Shoes> listShoes;
  final double stepsTarget;
  final double stepsReal;
  final double energyTarget;
  final double energyReal;

  User({
    required this.id,
    required this.avatar,
    required this.email,
    required this.score,
    required this.listShoes,
    required this.stepsTarget,
    required this.stepsReal,
    required this.energyTarget,
    required this.energyReal,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final shoesList = json['listShoes'] as List<dynamic>;
    final List<Shoes> parsedShoesList = shoesList.map((shoes) => Shoes.fromJson(shoes)).toList();

    return User(
      id: json['id'],
      avatar: json['avatar'],
      email: json['email'],
      score: json['score'],
      listShoes: parsedShoesList,
      stepsTarget: json['stepsTarget'],
      stepsReal: json['stepsReal'],
      energyTarget: json['energyTarget'],
      energyReal: json['energyReal'],
    );
  }
}
