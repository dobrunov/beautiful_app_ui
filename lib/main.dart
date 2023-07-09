import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:run_app_ui/user_provider.dart';

import 'home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserDataProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Run app',
        home: Home(),
      ),
    );
  }
}
