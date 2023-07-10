// import 'dart:convert';
// import 'dart:io';

// class User {
//   int id;
//   String avatar;
//   String email;
//   double score;
//   List<Shoes> listShoes = <Shoes>[];
//   double stepsTarget;
//   double stepsReal;
//   double energyTarget;
//   double energyReal;

//   User({
//     this.id = 0,
//     this.avatar = '',
//     this.email = '',
//     this.score = 0.0,
//     required this.listShoes,
//     this.stepsTarget = 0.0,
//     this.stepsReal = 0.0,
//     this.energyTarget = 0.0,
//     this.energyReal = 0.0,
//   });

//   factory User.fromJson(Map<String, dynamic> json) => User(
//         id: json["id"],
//         avatar: json["avatar"],
//         email: json["email"],
//         score: json["score"],
//         listShoes: List<Shoes>.from(json["listShoes"].map((x) => Shoes.fromJson(x))),
//         stepsTarget: json["stepsTarget"],
//         stepsReal: json["stepsReal"],
//         energyTarget: json["energyTarget"],
//         energyReal: json["energyReal"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "avatar": avatar,
//         "email": email,
//         "score": score,
//         "listShoes": List<dynamic>.from(listShoes.map((x) => x.toJson())),
//         "stepsTarget": stepsTarget,
//         "stepsReal": stepsReal,
//         "energyTarget": energyTarget,
//         "energyReal": energyReal,
//       };
// }

// class Shoes {
//   int id;
//   String name;
//   String image;

//   Shoes({
//     this.id = 0,
//     this.name = '',
//     this.image = '',
//   });

//   factory Shoes.fromJson(Map<String, dynamic> json) => Shoes(
//         id: json["id"],
//         name: json["name"],
//         image: json["image"] ?? '',
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "image": image,
//       };
// }

// void main() async {
//   final user = User(
//     id: 1,
//     avatar: 'images/evgen.png',
//     email: 'super_developer@gmail.com',
//     score: 99.99,
//     listShoes: [
//       Shoes(id: 145265874, name: 'Jogger 2023', image: 'https://example.com/shoes1.png'),
//       Shoes(id: 145265874, name: 'Jogger 2023', image: 'https://example.com/shoes2.png'),
//     ],
//     stepsTarget: 50.0,
//     stepsReal: 30.0,
//     energyTarget: 20.0,
//     energyReal: 4.0,
//   );

//   final server = await HttpServer.bind('localhost', 7000);

//   print('Server running on localhost:${server.port}');

//   await for (HttpRequest request in server) {
//     request.response.headers.add('Access-Control-Allow-Origin', '*');
//     request.response.headers.add('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
//     request.response.headers.add('Access-Control-Allow-Headers', 'Content-Type');
//     request.response.headers.contentType = ContentType.json;
//     request.response.write(jsonEncode(user.toJson()));
//     await request.response.close();
//   }
// }
