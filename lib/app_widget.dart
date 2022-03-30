import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/main/main_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hasan M. Hallak',
      theme: Constants.customTheme(context),
      home: const MainScreen(),
    );
  }
}
