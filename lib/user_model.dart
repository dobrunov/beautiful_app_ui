class User {
  int id;
  String avatar;
  String email;
  double score;
  double stepsTarget;
  double stepsReal;
  double energyTarget;
  double energyReal;

  User({
    this.id = 0,
    this.avatar = '',
    this.email = '',
    this.score = 00.000,
    this.stepsTarget = 0.0,
    this.stepsReal = 00.000,
    this.energyTarget = 00.0,
    this.energyReal = 00.000,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        avatar: json["avatar"],
        email: json["email"] ?? '',
        score: json["score"],
        stepsTarget: json["stepsTarget"],
        stepsReal: json["stepsReal"],
        energyTarget: json["energyTarget"],
        energyReal: json["energyReal"],
      );
}
