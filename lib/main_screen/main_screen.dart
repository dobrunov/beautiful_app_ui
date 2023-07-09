import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:run_app_ui/main_screen/widgets/add_shoes_widget.dart';
import 'package:run_app_ui/main_screen/widgets/header.dart';
import 'package:run_app_ui/main_screen/widgets/progress_widget.dart';
import 'package:run_app_ui/main_screen/widgets/start_button.dart';
import 'package:run_app_ui/main_screen/widgets/user_info_widget.dart';

import '../models/user_model.dart';
import '../user_provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  late final fakeData;

  @override
  Widget build(BuildContext context) {
    final userDataProvider = Provider.of<UserDataProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xff14161C),
      body: FutureBuilder<User>(
        future: userDataProvider.getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            //
            return const Center(child: CircularProgressIndicator());
            //
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
            //
          } else {
            final userData = snapshot.data!;
            return Content(userData: userData);
          }
        },
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.userData,
  });

  final User userData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Header(avatar: userData.avatar),
          UserInfoWidget(
            email: userData.email,
            score: userData.score,
          ),
          AddShoesWidget(
            listShoes: userData.listShoes,
          ),
          ProgressWidget(
            stepsTarget: userData.stepsTarget,
            stepsReal: userData.stepsReal,
            energyTarget: userData.energyTarget,
            energyReal: userData.energyReal,
          ),
          const StartButton(),
        ],
      ),
    );
  }
}
