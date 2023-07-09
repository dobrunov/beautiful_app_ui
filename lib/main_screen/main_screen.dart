import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:run_app_ui/main_screen/widgets/add_shoes_widget.dart';
import 'package:run_app_ui/main_screen/widgets/header.dart';
import 'package:run_app_ui/main_screen/widgets/progress_widget.dart';
import 'package:run_app_ui/main_screen/widgets/start_button.dart';
import 'package:run_app_ui/main_screen/widgets/user_info_widget.dart';

import '../user_provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late UserProvider provider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<UserProvider>(context, listen: false).getData();
    });

    provider = Provider.of<UserProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    var avatar = provider.user.avatar;
    var email = provider.user.email;
    var score = provider.user.score;
    var stepsTarget = provider.user.stepsTarget;
    var stepsReal = provider.user.stepsReal;
    var energyTarget = provider.user.energyTarget;
    var energyReal = provider.user.energyReal;

    return Scaffold(
      backgroundColor: const Color(0xff14161C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Header(avatar: avatar),
            UserInfoWidget(
              email: email,
              score: score,
            ),
            AddShoesWidget(),
            ProgressWidget(
              stepsTarget: stepsTarget,
              stepsReal: stepsReal,
              energyTarget: energyTarget,
              energyReal: energyReal,
            ),
            StartButton(),
          ],
        ),
      ),
    );
  }
}
