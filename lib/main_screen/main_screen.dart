import 'package:flutter/material.dart';

import 'package:run_app_ui/main_screen/widgets/add_shoes_widget.dart';
import 'package:run_app_ui/main_screen/widgets/header.dart';
import 'package:run_app_ui/main_screen/widgets/progress_widget.dart';
import 'package:run_app_ui/main_screen/widgets/start_button.dart';
import 'package:run_app_ui/main_screen/widgets/user_info_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff14161C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Header(),
            UserInfoWidget(),
            AddShoesWidget(),
            ProgressWidget(),
            StartButton(),
          ],
        ),
      ),
    );
  }
}
