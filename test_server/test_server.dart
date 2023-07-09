// import 'dart:convert';
// import 'dart:io';
//
// class User {
//   int id;
//   String avatar;
//   String email;
//   double score;
//   double stepsTarget;
//   double stepsReal;
//   double energyTarget;
//   double energyReal;
//
//   User({
//     this.id = 0,
//     this.avatar = '',
//     this.email = '',
//     this.score = 0.0,
//     this.stepsTarget = 0.0,
//     this.stepsReal = 0.0,
//     this.energyTarget = 0.0,
//     this.energyReal = 0.0,
//   });
//
//   factory User.fromJson(Map<String, dynamic> json) => User(
//         id: json["id"],
//         avatar: json["avatar"],
//         email: json["email"],
//         score: json["score"],
//         stepsTarget: json["stepsTarget"],
//         stepsReal: json["stepsReal"],
//         energyTarget: json["energyTarget"],
//         energyReal: json["energyReal"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "avatar": avatar,
//         "email": email,
//         "score": score,
//         "stepsTarget": stepsTarget,
//         "stepsReal": stepsReal,
//         "energyTarget": energyTarget,
//         "energyReal": energyReal,
//       };
// }
//
// void main() async {
//   final user = User(
//     id: 1,
//     avatar: 'images/evgen.png',
//     email: 'super_developer@gmail.com',
//     score: 9.11,
//     stepsTarget: 50.00,
//     stepsReal: 30.10,
//     energyTarget: 25.0,
//     energyReal: 9.1,
//   );
//
//   final server = await HttpServer.bind('localhost', 7000);
//
//   print('Server running on localhost:${server.port}');
//
//   await for (HttpRequest request in server) {
//     request.response.headers.add('Access-Control-Allow-Origin', '*');
//     request.response.headers.add('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
//     request.response.headers.add('Access-Control-Allow-Headers', 'Content-Type');
//     request.response.headers.contentType = ContentType.json;
//     request.response.write(jsonEncode(user.toJson()));
//     await request.response.close();
//   }
// }
